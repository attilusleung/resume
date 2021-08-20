#set page(
  paper: "a4",
  margin: (
    "top": 45pt,
    "bottom": 45pt,
  )
)

#show link: set text(fill: blue, weight: 700)
#show link: underline
#show title: set align(center)

// #show heading: set block(above: 1em)

#grid(
  columns: (1fr, 1fr, 1fr),
  align: center,
  align(bottom, "+1 (607) 379-4576"),
  title[Yuet Ming Leung],
  align(bottom, "attilusleung@gmail.com"),
)
#v(2pt)
#line(length: 100%)

#let experience(
  role, 
  duration,
  location,
  content,
) = {
  grid(
    columns: (2.5fr, 1fr, 112pt),
    rows: (auto, auto),
    row-gutter: 8pt,
    align: left,
    role,
    // align(left, [Jump Trading]),
    align(right, emph(location)),
    align(right, duration),
    grid.cell(
      colspan: 3,
      content,
    )
  )
}

= Experience
#experience(
  [*Software Engineer* - Jump Trading],
  "Aug 2022 - Present",
  "Chicago, IL",
  [
    - Built the initial design and skeleton for a *high throughput, low latency trading system* that interacts in *modern C++ (C++23)* that listens to *billions of packets daily* and makes trading decisions using *custom ASIC hardware*.
    - Worked in a *brand new core technology team* to solve a new *hardware trade* that has *never before been done within the firm*.
    - Optimized the trading system using *perf*, *magic trace* and other custom metrics with a focus on improving the performance *sub-microsecond* decision loops.
    - Created a *large-scale distributed simulation analysis pipeline* that analyzed simulation accuracy for most historical simulations within the firm, categorizing errors and visualizing them in a *custom web dashboard* for analysis and triaging bug fixes, eventually *achieving 99.9% simulation accuracy* for all historical traffic within certain venues. 
    - Optimized prediction pipelines to reduce memory usage and improve compute utilization by converting existing pipelines to use *pyarrow IPC streams* and performing computations in batches, *reducing memory usage per node by 10x* and job queue times for better throughput
    - Enhanced the reliability of a major *command and control backend used by all teams* within the firm by increasing visibility in errors and performance through *metrics* using *telegraf*, *redpandas* and *clickhouse*.
    - Addressed errors and performance issues revealed within the *backend server* and the complementary *C++ / Python *, leading to a *26x decrease in on-call issues*.
  ]
)

#experience(
  [*Software Engineer Intern* - Jump Trading],
  "Jun 2021 - Aug 2021",
  "Chicago, IL",
  [
    - Converted an data pipeline stage to use *distributed worker pools* within a *high performance computing (HPC) grid*, reducing pipeline runtime from *days to hours*.
    - Implemented telemetry collection to *collect usage metrics* within a *core internal C++ library*
  ]
)

#experience(
  [*Software Engineer Intern* - Meta],
  "Jun 2020 - Aug 2020",
  "Remote",
  [
    - Extended a *chaos testing test suite* using *UNIX tools* and *Python* to guarantee reliability of services even in the presence of system failures to *prevent potential outages*.
    - Implemented an *alerting system* within the chaos testing framework that logs infrastructure failures to *MYSQL* and notifies developers such that outages can be prevented before they happen.
    - Designed and implemented a *web UI* to show all detected infrastructure issues using *PHP*.
  ]
)

= Education
#grid(
  columns: (3fr, 1fr, 112pt),
  // rows: (auto, auto),
  row-gutter: 4pt,
  align: left,
  [*Cornell University*],
  align(right, [_Ithaca, NY_]),
  align(right, [Aug 2018 - May 2022]),
  grid.cell(
    colspan: 3,
    [Master of Engineering in Computer Science],
  ),
  grid.cell(
    colspan: 3,
    [Bachelor of Arts in Computer Science],
  ),
)

= Projects
#experience(
  [Cornell University Autonomous Underwater Vehicle],
  "Oct 2018 - Aug 2022",
  "Ithaca, NY",
  [
    - *Lead a team of 10-20 people* that focused on *AI software improvements* for the submarine and general competition strategy
    - Developed *computer vision modules* and *mission reasoning systems* for the vehicle using a custom robotics stack built from scratch within a Docker container on an *Nvidia Jetson*
    - *Placed 5th* in AUVSI's 2019 Robosub Competition
  ]
)
#v(8pt)
#grid(
  gutter: 5pt,
  [Programming Languages: C++, Python, Rust],
  [Software: pyarrow, telgraf, redpandas, polars, pandas, clickhouse, SQL, Docker]
)
