import torch

import torch.nn as nn
import torch.nn.functional as F

from torch.autograd import Function

from .domain_discriminator import Discriminator
from .domain_regressor import AltitudeRegressor

class GRL(Function):
    @staticmethod
    def forward(ctx, x, alpha):
        # Store context for backprop
        ctx.alpha = alpha

        # Forward pass is a no-op
        return x.view_as(x)

    @staticmethod
    def backward(ctx, grad_output):
        # Backward pass is just to -alpha the gradient
        output = grad_output.neg() * ctx.alpha

        # Must return same number as inputs to forward()
        return output, None
    
class DomainBranch(nn.Module):
    def __init__(self, altitude, angle, timeday):
        super(DomainBranch, self).__init__()
        self.altitude = altitude
        self.angle = angle
        self.timeday = timeday

        if self.altitude:
            self.altitude_module = Discriminator(3)

        if self.angle:
            self.angle_module = Discriminator(3)

        if self.timeday:
            self.timeday_module = Discriminator(2)


    def forward(self, feature, alpha=1):
        #feature = GRL.apply(feature, alpha)

        d_output = {}
        
        if self.altitude:
            d_output['altitude'] = self.altitude_module(feature)

        if self.angle:
            d_output['angle'] = self.angle_module(feature)
        
        if self.timeday:
            d_output['timeday'] = self.time_module(feature)

        return d_output
