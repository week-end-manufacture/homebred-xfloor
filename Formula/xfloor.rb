class Xfloor < Formula
    include Language::Python::Virtualenv

    desc "Our best friend for web scraping"
    homepage "https://github.com/week-end-manufacture/xfloor"
    url "https://github.com/week-end-manufacture/xfloor/archive/refs/tags/0.0.5.tar.gz"
    sha256 "00ab2d31483422e019fa0509088a274c0cf29f0f6f1a416962d82c96109a55d9"
    version "0.0.5"
    license "MIT"
  
    depends_on "python@3.9"

    resource "setuptools" do
        url "https://files.pythonhosted.org/packages/d6/4f/b10f707e14ef7de524fe1f8988a294fb262a29c9b5b12275c7e188864aed/setuptools-69.5.1.tar.gz"
        sha256 "6c1fccdac05a97e598fb0ae3bbed5904ccb317337a51139dcd51453611bbb987"
    end

    resource "beautifulsoup4" do
        url "https://files.pythonhosted.org/packages/b3/ca/824b1195773ce6166d388573fc106ce56d4a805bd7427b624e063596ec58/beautifulsoup4-4.12.3.tar.gz"
        sha256 "74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051"
    end

    resource "soupsieve" do
        url "https://files.pythonhosted.org/packages/d7/ce/fbaeed4f9fb8b2daa961f90591662df6a86c1abf25c548329a86920aedfb/soupsieve-2.6.tar.gz"
        sha256 "e2e68417777af359ec65daac1057404a3c8a5455bb8abc36f1a9866ab1a51abb"
    end

    def install
        venv = virtualenv_create(libexec, "python3")
        venv.pip_install resources
        venv.pip_install_and_link buildpath/"src"
    end
end