{
  aiken = {
    scope = "source.aiken";
    file-types = [ "ak" ];
    roots = [ "aiken.toml" ];
    comment-token = "//";
  };
  apex = {
    scope = "source.apex";
    file-types = [
      "cls"
      "trigger"
      "apex"
    ];
    roots = [ "sfdx-project.json" ];
    comment-token = "//";
    grammar = "java";
  };
  arduino = {
    scope = "source.arduino";
    file-types = [ "ino" ];
    comment-token = "//";
    grammar = "cpp";
  };
  asciidoc = {
    scope = "source.asciidoc";
    file-types = [
      "adoc"
      "asciidoc"
      "asc"
    ];
    comment-token = "//";
  };
  atlas = {
    scope = "source.hcl";
    file-types = [
      { glob = "atlas.hcl"; }
      { glob = "*.my.hcl"; }
      { glob = "*.pg.hcl"; }
      { glob = "*.lt.hcl"; }
      { glob = "*.ms.hcl"; }
      { glob = "*.ch.hcl"; }
      { glob = "*.sqlite.hcl"; }
      { glob = "*.plan.hcl"; }
      { glob = "*.test.hcl"; }
      { glob = "*.rule.hcl"; }
    ];
    roots = [ "atlas.hcl" ];
    comment-token = "#";
    grammar = "hcl";
  };
  ato = {
    scope = "source.ato";
    file-types = [ "ato" ];
    roots = [ "ato.yaml" ];
    comment-token = "#";
  };
  ballerina = {
    scope = "source.ballerina";
    file-types = [ "bal" ];
    roots = [ "Ballerina.toml" ];
    comment-token = "//";
  };
  brightscript = {
    scope = "source.brightscript";
    file-types = [ "brs" ];
    roots = [ "manifest" ];
    comment-token = "'";
  };
  brioche = {
    scope = "source.brioche";
    file-types = [ "bri" ];
    comment-token = "//";
    grammar = "typescript";
  };
  c3 = {
    scope = "source.c3";
    file-types = [
      "c3"
      "c3i"
      "c3t"
    ];
    roots = [ "project.json" ];
    comment-token = "//";
  };
  coq = {
    scope = "source.coq";
    file-types = [ "v" ];
    roots = [
      "_CoqProject"
      "dune-project"
    ];
    block-comment-tokens = {
      start = "(*";
      end = "*)";
    };
  };
  dafny = {
    scope = "source.dafny";
    file-types = [ "dfy" ];
    comment-token = "//";
  };
  erg = {
    scope = "source.erg";
    file-types = [ "er" ];
    comment-token = "#";
  };
  fstar = {
    scope = "source.fstar";
    file-types = [
      "fst"
      "fsti"
    ];
    comment-token = "//";
    block-comment-tokens = {
      start = "(*";
      end = "*)";
    };
  };
  futhark = {
    scope = "source.futhark";
    file-types = [ "fut" ];
    comment-token = "--";
  };
  kcl = {
    scope = "source.kcl";
    file-types = [ "k" ];
    roots = [ "kcl.mod" ];
    comment-token = "#";
  };
  liquid = {
    scope = "source.liquid";
    file-types = [ "liquid" ];
    block-comment-tokens = {
      start = "{% comment %}";
      end = "{% endcomment %}";
    };
    grammar = "html";
  };
  microcad = {
    scope = "source.microcad";
    file-types = [
      "µcad"
      "ucad"
    ];
    comment-token = "//";
  };
  mlir = {
    scope = "source.mlir";
    file-types = [ "mlir" ];
    comment-token = "//";
  };
  pdll = {
    scope = "source.pdll";
    file-types = [ "pdll" ];
    comment-token = "//";
  };
  roc = {
    scope = "source.roc";
    file-types = [ "roc" ];
    roots = [ "main.roc" ];
    comment-token = "#";
    indent = {
      tab-width = 4;
      unit = "    ";
    };
  };
  rune = {
    scope = "source.rune";
    file-types = [ "rn" ];
    roots = [ "Rune.toml" ];
    comment-token = "//";
  };
  smt2 = {
    scope = "source.smt2";
    file-types = [
      "smt2"
      "smt"
    ];
    comment-token = ";";
  };
  tptp = {
    scope = "source.tptp";
    file-types = [
      "p"
      "tptp"
      "ax"
    ];
    comment-token = "%";
  };
  uiua = {
    scope = "source.uiua";
    file-types = [ "ua" ];
    comment-token = "#";
  };
  veryl = {
    scope = "source.veryl";
    file-types = [ "veryl" ];
    roots = [ "Veryl.toml" ];
    comment-token = "//";
  };
  vim = {
    scope = "source.vim";
    file-types = [
      "vim"
      { glob = ".vimrc"; }
      { glob = "vimrc"; }
    ];
    comment-token = "\"";
  };
  vimdoc = {
    scope = "source.vimdoc";
    file-types = [ { glob = "*/doc/*.txt"; } ];
  };
  zf = {
    scope = "source.zf";
    file-types = [ "zf" ];
    comment-token = "#";
  };
}
