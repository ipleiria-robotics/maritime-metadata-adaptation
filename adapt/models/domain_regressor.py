import torch.nn as nn

class AltitudeRegressor(nn.Module):
    def __init__(self):
        super().__init__()
        self.conv1 = nn.Conv2d(in_channels = 1024, out_channels = 64, kernel_size=(5, 5), stride=2, padding=1)
        self.conv2 = nn.Conv2d(in_channels = 64, out_channels = 16, kernel_size=(3, 3), stride=2, padding=1)
        self.conv3 = nn.Conv2d(in_channels = 16, out_channels = 4, kernel_size=(3, 3), padding=1)
        self.fc1 = nn.Linear(in_features=100, out_features=50)
        self.fc2 = nn.Linear(in_features=50, out_features=1)
        
        # Activation Functions
        self.leaky = nn.LeakyReLU(0.2)

    def forward(self, x):
      x = self.conv1(x)
      x = self.leaky(x)
      x = self.conv2(x)
      x = self.leaky(x)
      x = self.conv3(x)
      x = self.leaky(x)

      x = x.view(x.size(0), -1)  
      x = self.fc1(x)
      x = self.leaky(x)
      x = self.fc2(x)
      return x