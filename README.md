# Wraith Tests
Maintainers: [jbickar](https://github.com/jbickar), [sherakama](https://github.com/sherakama)

[Changelog.txt](CHANGELOG.txt)

## Installation

```
brew install phantomjs
brew install imagemagick
brew install casperjs --devel
gem install wraith
```
See "Other Resources" below for more in-depth installation instructions.

## Usage

### Setting Up a New Project

1. Copy a recently-committed directory to a new location at the root of the repo (e.g., `cp -r registrar newproject`)
2. Edit `newproject/configs/config.yaml` to update the `domains` and `paths` to what you want for your new project.
3. Edit `newproject/configs/history.yaml` to update the `domains` and `paths` to what you want for your new project.
4. Optionally, edit the `screen_widths` and other settings

### Running Visual Regression Tests of a Site Across Two Environments

1. `cd myproject`
2. `wraith capture config` (`config` is the name of the YML file in the `configs` directory.  You could name it `foo.yaml` and then run `wraith capture foo`.)
3. `open shots/gallery.html`
4. Review the screenshots in `gallery.html` for differences

Note: If you want to increase the timeout, add the following line to your `config.yaml` file:

```
before_capture: "../../timeout.js"
```

### Running Visual Regression Tests of a Site Against A Historical Baseline

1. `cd myproject`
2. `wraith history history` to establish a baseline set of screenshots (`history` is the name of the YML file in the `configs` directory.  You could name it `foo.yaml` and then run `wraith history foo`.)
3. `wraith latest history` to compare the latest versions against the baseline.
4. `open shots/gallery.html`
5. Review the screenshots in `gallery.html` for differences


## Other Resources

- [See Pantheon's excellent wraith tutorial](https://pantheon.io/docs/guides/visual-diff-with-wraith/)
- [See wraith on BBC's github](https://github.com/BBC-News/wraith)
- [See BBC's wraith documentation](http://bbc-news.github.io/wraith/index.html)

## Fix for SSL errors and self signed certificates
https://gist.github.com/sherakama/986c546f1dade4626b61#file-save_images-rb-L42
