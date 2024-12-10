class Xfloor < Formula
    include Language::Python::Virtualenv

    desc "Our best friend for web scraping"
    homepage "https://github.com/week-end-manufacture/xfloor"
    url "https://github.com/week-end-manufacture/xfloor/archive/refs/tags/0.0.2.tar.gz"
    sha256 "01a7bd25285f31abd51db593a7ffaf7a798553ef4f2ee190dc37571fa5cf9c13"
    version "0.0.2"
    license "MIT"
  
    depends_on "python@3.9"

    resource "beautifulsoup4" do
        url "https://files.pythonhosted.org/packages/b3/ca/824b1195773ce6166d388573fc106ce56d4a805bd7427b624e063596ec58/beautifulsoup4-4.12.3.tar.gz"
        sha256 "74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051"
    end

    resource "soupsieve" do
        url "https://files.pythonhosted.org/packages/d7/ce/fbaeed4f9fb8b2daa961f90591662df6a86c1abf25c548329a86920aedfb/soupsieve-2.6.tar.gz"
        sha256 "e2e68417777af359ec65daac1057404a3c8a5455bb8abc36f1a9866ab1a51abb"
    end

    def install
        cd "src" do
            virtualenv_install_with_resources
        end
    end
  end