# about.urirun.com

about.urirun.com

## Contents

- [Metadata](#metadata)
- [Architecture](#architecture)
- [Workflows](#workflows)
- [Configuration](#configuration)
- [Deployment](#deployment)
- [Makefile Targets](#makefile-targets)
- [Code Analysis](#code-analysis)
- [Call Graph](#call-graph)
- [Intent](#intent)

## Metadata

- **name**: `about-urirun-com`
- **version**: `0.0.0`
- **ecosystem**: SUMD + DOQL + testql + taskfile
- **generated_from**: Makefile, app.doql.less, project/(3 analysis files)

## Architecture

```
SUMD (description) → DOQL/source (code) → taskfile (automation) → testql (verification)
```

### DOQL Application Declaration (`app.doql.less`)

```less markpact:doql path=app.doql.less
// LESS format — define @variables here as needed

app {
  name: about-urirun-com;
  version: 0.1.0;
}

interface[type="web"] {
  type: spa;
  framework: static;
}

workflow[name="serve"] {
  trigger: manual;
  step-1: run cmd=python3 -m http.server $(PORT);
}

workflow[name="test"] {
  trigger: manual;
  step-1: run cmd=python3 scripts/check.py;
}

workflow[name="deploy"] {
  trigger: manual;
  step-1: run cmd=bash scripts/deploy-plesk.sh;
}

deploy {
  target: makefile;
}

environment[name="local"] {
  runtime: python;
}
```

## Workflows

## Configuration

```yaml
project:
  name: about-urirun-com
  version: 0.0.0
  env: local
```

## Deployment

```bash markpact:run
pip install about-urirun-com

# development install
pip install -e .[dev]
```

## Makefile Targets

- `help`
- `serve`
- `test`
- `deploy`

## Code Analysis

### `project/map.toon.yaml`

```toon markpact:analysis path=project/map.toon.yaml
# about-urirun-com | 6f 298L | shell:3,less:1,javascript:1,python:1 | 2026-07-14
# stats: 1 func | 1 cls | 6 mod | CC̄=8.0 | critical:0 | cycles:0
# alerts[5]: CC main=8; fan-out main=7
# hotspots[5]: main fan=7
# evolution: baseline
# Keys: M=modules, D=details, i=imports, e=exports, c=classes, f=functions, m=methods
M[6]:
  app.doql.less,35
  assets/ifuri-ecobar.js,106
  project.sh,66
  scripts/check.py,71
  scripts/deploy-plesk.sh,15
  tree.sh,5
D:
  scripts/check.py:
    e: main,Counter
    Counter: __init__(0),handle_starttag(2),handle_endtag(1)
    main()
```

### `project/logic.pl`

```prolog markpact:analysis path=project/logic.pl
% ── Project Metadata ─────────────────────────────────────
project_metadata('about-urirun-com', '0.0.0', 'python').

% ── Project Files ────────────────────────────────────────
project_file('app.doql.less', 35, 'less').
project_file('assets/ifuri-ecobar.js', 106, 'javascript').
project_file('project.sh', 66, 'shell').
project_file('scripts/check.py', 71, 'python').
project_file('scripts/deploy-plesk.sh', 15, 'shell').
project_file('tree.sh', 5, 'shell').

% ── Python Functions ─────────────────────────────────────
python_function('scripts/check.py', 'main', 0, 8, 7).

% ── Python Classes ───────────────────────────────────────
python_class('scripts/check.py', 'Counter').
python_method('Counter', '__init__', 0, 1, 2).
python_method('Counter', 'handle_starttag', 2, 2, 1).
python_method('Counter', 'handle_endtag', 1, 2, 1).

% ── Dependencies ─────────────────────────────────────────

% ── Makefile Targets ─────────────────────────────────────
makefile_target('help', '').
makefile_target('serve', '').
makefile_target('test', '').
makefile_target('deploy', '').

% ── Taskfile Tasks ───────────────────────────────────────

% ── Environment Variables ────────────────────────────────

% ── TestQL Scenarios ─────────────────────────────────────

% ── Semantic Facts from SUMD.md ──────────────────────────
```

## Call Graph

*3 nodes · 2 edges · 1 modules · CC̄=3.0*

### Hubs (by degree)

| Function | CC | in | out | total |
|----------|----|----|-----|-------|
| `navHTML` *(in assets.ifuri-ecobar)* | 3 | 0 | 4 | **4** |
| `esc` *(in assets.ifuri-ecobar)* | 1 | 1 | 2 | **3** |
| `isActive` *(in assets.ifuri-ecobar)* | 8 | 1 | 1 | **2** |

```toon markpact:analysis path=project/calls.toon.yaml
# code2llm call graph | /home/tom/github/if-uri/about-urirun-com
# generated in 0.00s
# nodes: 3 | edges: 2 | modules: 1
# CC̄=3.0

HUBS[20]:
  assets.ifuri-ecobar.navHTML
    CC=3  in:0  out:4  total:4
  assets.ifuri-ecobar.esc
    CC=1  in:1  out:2  total:3
  assets.ifuri-ecobar.isActive
    CC=8  in:1  out:1  total:2

MODULES:
  assets.ifuri-ecobar  [3 funcs]
    esc  CC=1  out:2
    isActive  CC=8  out:1
    navHTML  CC=3  out:4

EDGES:
  assets.ifuri-ecobar.navHTML → assets.ifuri-ecobar.esc
  assets.ifuri-ecobar.navHTML → assets.ifuri-ecobar.isActive
```

## Intent

about.urirun.com
