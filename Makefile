.PHONY: install_requirements download_files_synth download_files_real organize_files

all: install_requirements download_files_real organize_files_real

# General
install_requirements:
	( \
		python3 -m venv venv; \
		. venv/bin/activate; \
    	pip install -r requirements.txt; \
	)

# Real Setup
download_files_real:
	( \
		bash ./setup/download_real.sh
	)

organize_files_real:
	( \
		python3 ./setup/0_gen_json_metadata.py; \
		python3 ./setup/1_mv_images_metadata.py; \
		python3 ./setup/2_make_folder_metadata.py; \
		python3 ./setup/2_make_folder_labels.py --val --train; \
	)

# Clear everything
clean:
	rm -rf ./runs
	rm -rf ./venv