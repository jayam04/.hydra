# Hydra 🐲

## FAQs

1. What is Hydra?  
    Hydra is a set of scripts that helps you manage your Linux machine (mainly Debian based) easily. 💻  

2. Isn't it the same as [electron](https://github.com/jayam04/.electron)? If yes, what's the need for it?  
    Well, Hydra is similar to electron but more focused on developer workflows. 👨‍💻 The main difference is that Hydra is simpler and designed just for you, while electron is more complex and generic. The simplicity makes Hydra fast and reliable! ⚡️  

3. What's with the weird file naming in `packages`?  
    In `packages`, filenames are separated by `.` where:  

    - First section is about the tool 🛠️  
    - Last section is the file extension  
    - Sections in between show pre-requisites to install that package using the script. 📦  
    This naming helps understand what's needed before installing something. 💡  

4. Why does this README sounds so strange?  
    It's because of 2 reasons
    1. Claude.ai didn't do it's job well, maybe ChatGPT is better in writing docs.  
    2. I am lazy to ask ChatGPT to rewrite it.  

## Getting Started 🚀  

1. Clone this repo wherever you like 📋  
2. Add `source /full/path/to/hydrarc` to `.zshrc` or `.bashrc`  
3. Customize `config.json` for your needs 🪄  
4. Run `scripts/compile_config` to resolve variables 🔀  
That's it! Now you can run scripts in packages to quickly install dev tools. 😎  
