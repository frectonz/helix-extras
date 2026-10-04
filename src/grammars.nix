{ pkgs, ... }:
let
  grammar =
    language: src:
    pkgs.tree-sitter.buildGrammar {
      inherit language src;
      version = "0-unstable-${builtins.substring 0 7 src.rev}";
    };
in
{
  c3 = rec {
    src = pkgs.fetchFromGitHub {
      owner = "c3lang";
      repo = "tree-sitter-c3";
      rev = "15d3502510af0a6c888c663ec8d6aca8791216ce";
      hash = "sha256-0r1uFIxrc5azpxoP8qNZbs7r/eS0mAV2L7KDu9VIsVo=";
    };
    package = grammar "c3" src;
    queries = pkgs.fetchFromGitHub {
      owner = "helix-editor";
      repo = "helix";
      rev = "ba40e547426b0f9896c8bdc699a4ab11f2b37dbc";
      rootDir = "runtime/queries/c3";
      hash = "sha256-dW+AjtyAQ59ecIzKj02C78/GvJSHhaEBdsbuU5VD4F4=";
    };
  };

  dafny = rec {
    src = pkgs.fetchFromGitHub {
      owner = "hath995";
      repo = "tree-sitter-dafny";
      rev = "8085572ab23ba703a1f5c1cf753136a3508c68a6";
      hash = "sha256-WQ5smsdX4O7c3NgmVLaBiW0S44JUiLu5uRXOsDpLr7k=";
    };
    package = grammar "dafny" src;
  };

  kcl = rec {
    src = pkgs.fetchFromGitHub {
      owner = "kcl-lang";
      repo = "tree-sitter-kcl";
      rev = "b0b2eb38009e04035a6e266c7e11e541f3caab7c";
      hash = "sha256-Aeu1j77GdsNpo9PU+FcqN3ttT0eLaDKY4n8buftMiDc=";
    };
    package = grammar "kcl" src;
    queries = pkgs.fetchFromGitHub {
      owner = "arichtman";
      repo = "helix";
      rev = "51f4fd333963a997c6bc72d2bf8c4fa510e04ae1";
      rootDir = "runtime/queries/kcl-lang";
      hash = "sha256-XlEjufMqn2zk5wKhDw44xDKpASNe1+YL5EONbazcvXc=";
    };
  };

  microcad = rec {
    src = pkgs.fetchgit {
      url = "https://codeberg.org/microcad/tree-sitter-microcad";
      rev = "339420b9cfbb9d6e96ed1f881c1632af4c3fcd22";
      hash = "sha256-+utH9yihfDa/PT82ltjurEdpkdRIEEisYZMgaG6qxtA=";
    };
    package = grammar "microcad" src;
    queries = pkgs.fetchFromGitHub {
      owner = "RossSmyth";
      repo = "helix";
      rev = "c4edf28f428e9caf23e81182577e15d57f67717f";
      rootDir = "runtime/queries/microcad";
      hash = "sha256-Yda1kZIDa+xV/FCtkTc+0qe84gXbcyq2CPnrRYGTP34=";
    };
  };

  roc = rec {
    src = pkgs.fetchFromGitHub {
      owner = "faldor20";
      repo = "tree-sitter-roc";
      rev = "2760de95b87004ed537151f2467377a6ddafdef0";
      hash = "sha256-+J7PRYVD4J4mGJIvZnmSKuwGG/vdNkVPuEmCTq8mtwI=";
    };
    package = grammar "roc" src;
    queries = "${src}/queries-generated/helix/queries";
  };

  uiua = rec {
    src = pkgs.fetchFromGitHub {
      owner = "shnarazk";
      repo = "tree-sitter-uiua";
      rev = "0da15357bc1179b187018131dc20c2395e77ce71";
      hash = "sha256-LzMKUE4cXQXFValabbkLO3rz0A/+3Sm1Fc/OH0Ag4qI=";
    };
    package = grammar "uiua" src;
  };

  vim = rec {
    src = pkgs.fetchFromGitHub {
      owner = "tree-sitter-grammars";
      repo = "tree-sitter-vim";
      rev = "f3cd62d8bd043ef20507e84bb6b4b53731ccf3a7";
      hash = "sha256-KVaTJKU7r7zk57Fn9zl5s34oq8tsLkSRV3VHM6Q6F+s=";
    };
    package = grammar "vim" src;
    queries = pkgs.fetchFromGitHub {
      owner = "helix-editor";
      repo = "helix";
      rev = "ba40e547426b0f9896c8bdc699a4ab11f2b37dbc";
      rootDir = "runtime/queries/vim";
      hash = "sha256-oYXw8CjrSNWM6A0UO/HPLy5UW4cKW73IA7RPv4+DlGw=";
    };
  };
}
