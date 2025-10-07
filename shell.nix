{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python311
    pkgs.python311Packages.jupyterlab
    pkgs.python311Packages.numpy
    pkgs.python311Packages.pandas
    pkgs.python311Packages.matplotlib
    pkgs.python311Packages.seaborn
    pkgs.python311Packages.scikit-learn
    pkgs.python311Packages.statsmodels
    # Add other Python packages you need
  ];

  shellHook = ''
    echo "Jupyter environment ready. Run: jupyter lab"
  '';
}

