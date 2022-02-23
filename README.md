# Bumblebee Install

If you have NVIDIA Optimus laptops and want to use your NVIDIA card instead of Intel card, Using Bumblebee can help you to switch GPU between Intell and NVIDIA. This bash script installs Bumblebee automatically.

# Installation

Install dependencies

```bash
su
sudo apt -y install git || apt -y install make
exit
```

# Run

Clone the project

```bash
git clone https://github.com/ahmetcancicek/debian-bumblebee-install
```

Go to the project directory

```bash
cd debian-bumblebee-install
```

Run
```
sudo make run
```
