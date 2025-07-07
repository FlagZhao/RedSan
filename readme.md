# RedSan

 <img src="./redsan.jpg" width = "500" alt="GPUPUNK" align=center />


RedSan is a tool to detect and analyze redundant memory instructions in GPU programs.

# Installation

## 1. Clone the repository
```bash
git clone --recursive https://github.com/FlagZhao/redsan.git
```

## 2. Install the dependencies
modify the ./bin/install_release.sh to your own environment

```bash
cd redsan
./bin/install_release.sh > install_trace.log 2>&1
```

## 3. Run the example
modify the ./bin/example_run.sh to your own environment
copy the script to your target executable path

```bash
cp ./bin/example_run.sh /path/to/your/executable
./example_run.sh
```

Please cite our paper in SC'25 if you use this tool in your research(link will be updated soon):








