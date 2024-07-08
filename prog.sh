# Install Python and its dependencies
echo "Installing Python..."

# Install pyenv
pyenv install 3.11.6
pyenv global 3.11.6

pip install pip --upgrade

# Settings for sklearn to work on Apple silicon
# export OPENBLAS=$(/opt/homebrew/bin/brew --prefix openblas)
# export CFLAGS="-falign-functions=8 ${CFLAGS}"

# Python Packages
python=(
    ipython
    jupyter
    jupyterlab
    numpy
    matplotlib
    seaborn
    scipy
    scikit-learn
    tensorflow
    torch
    torchvision
)

echo "Python packages to be installed:"
pip install ${python[@]}

# Install thefuck
brew install thefuck

# Install Julia and its dependencies
echo "Installing Julia"

curl -fsSL https://install.julialang.org | sh
