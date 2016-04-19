#android-orm-benchmark

##Hey!

Slides from my DroidconUK talk: https://docs.google.com/a/touchlab.co/presentation/d/1jZW-SKdlMmOZG2QrcnWNP7EPJj5bIunLXiHdUeVZq2U/edit?usp=sharing

This project was originally built to basically show how much faster GreenDAO is than ORMLite.
The speed difference was mostly caused by putting a foreign collection on the ORMLite entity,
and not on the GreenDAO entity, so ORMLite was WAY slower in measurements.  As a general rule,
  benchmarks tend to show the result the author wants (sorry, benchmark person).

I was the original ORMLite Android adapter author (not the ORMLite author, which was WAY more
work).  Since I found this benchmark, I've been using it to demostrate relative speed of
different ORMs.  I've been using this one mostly toung in cheek.  It was originally designed
with a huge bias to show what was desired, so ha ha.  I've tried to remove as much bias as
possible, but if experts in the target ORMs understand them better, please update.

The benchmark only tests basic table marshalling.  Testing foreign object fetching is tricky
because different frameworks do it differently (or don't at all).  However, if you understand
which mechanism is used, you can pretty much extrapolate what the performance will be like.

In general, source-gen frameworks are 2x reflection frameworks.  Ironically, considering the
initial goal, GreenDAO is by far the slowest source gen (not including SquiDB, which is
slower than some reflection frameworks).

Performance isn't everything, though.  Whatever.  Here's the original README.  The numbers
I ran were on Lollipop, which may explain why relfection vs source gen performance is much better now.

Currently tested frameworks

DBFlow

Cupboard

GreenDAO

ORMLite

Realm

SQLite

SQLite (optimized)

Squeaky

Squeaky (immutables)

SquiDB

SugarORM

##Summary

ORM-Benchmark is an Android application built in Eclipse that benchmarks the following against each other:

- [ORMLite](http://ormlite.com/)
- [GreenDAO](http://greendao-orm.com/)
- [Android raw SQLite](http://developer.android.com/guide/topics/data/data-storage.html#db)

The benchmark runs the following tasks:

- CREATE_DB - Creation of database structure
- WRITE_DATA - Writing 1000 'user' objects and 10000 'message' objects
- READ_DATA - Read all 10000 'message' objects in the table
- READ_INDEXED - Read an indexed field (the 5000th 'message' in the table)
- READ_SEARCH - Query the first 100 rows that matches a search term (using LIKE)
- DROP_DB - Drop database strucuture

Each task is run 5 times, and the application reports the average time for each in milliseconds.

##Sample Output

Building and running the ORM-Benchmark project produces output similar to that below. 

- The times are in milliseconds.
- The results are shown on the device and are also logged to Logcat.  

The results below combine the in-memory database results with the on disk database results side by side.  They are from a Nexus 4 on 20th Dec 2013, and we've put an "M" in front of the tests for the in-memory results.

<pre>
Task CREATE_DB
M RAW - Avg: 4
RAW - Avg: 230

M ORMLite - Avg: 6
ORMLite - Avg: 233

M GreenDAO - Avg: 3
GreenDAO - Avg: 163

Task WRITE_DATA
M RAW - Avg: 2925
RAW - Avg: 3281

M ORMLite - Avg: 6898
ORMLite - Avg: 7203

M GreenDAO - Avg: 1960
GreenDAO - Avg: 2470

Task READ_DATA
M RAW - Avg: 803
RAW - Avg: 808

M ORMLite - Avg: 1656
ORMLite - Avg: 1729

M GreenDAO - Avg: 1183
GreenDAO - Avg: 1186

Task READ_INDEXED
M RAW - Avg: 1
RAW - Avg: 1

M ORMLite - Avg: 2
ORMLite - Avg: 3

M GreenDAO - Avg: 1
GreenDAO - Avg: 1

Task READ_SEARCH
M RAW - Avg: 8
RAW - Avg: 8

M ORMLite - Avg: 119
ORMLite - Avg: 156

M GreenDAO - Avg: 7
GreenDAO - Avg: 6

Task DROP_DB
M RAW - Avg: 8
RAW - Avg: 515

M ORMLite - Avg: 10
ORMLite - Avg: 558

M GreenDAO - Avg: 8
GreenDAO - Avg: 369
</pre>

##Screenshots

![main](/screenshots/main.png?raw=true "Main screen")

After pressing "Run Benchmark" you can press "Show Results" to see the results:

![results](/screenshots/results.png?raw=true "Results")

##Technical Reference
###Customizing Benchmark Tests

- Enable/disable the usage of [in-memory](https://www.sqlite.org/inmemorydb.html) SQLite databases. Check [MainActivity#USE_IN_MEMORY_DB](/ORM-Benchmark/src/main/java/com/littleinc/orm_benchmark/MainActivity.java#L38)
- Number of times to run the tests. Check [MainActivity#NUM_ITERATIONS](/ORM-Benchmark/src/main/java/com/littleinc/orm_benchmark/MainActivity.java#L40)
- Implementing your own [BenchmarkExecutable](/ORM-Benchmark/src/main/java/com/littleinc/orm_benchmark/BenchmarkExecutable.java) you can add more tests.
- Search term. Check [BenchmarkExecutable#SEARCH_TERM](/ORM-Benchmark/src/main/java/com/littleinc/orm_benchmark/BenchmarkExecutable.java#L9)
- Search limit. Check [BenchmarkExecutable#SEARCH_LIMIT](/ORM-Benchmark/src/main/java/com/littleinc/orm_benchmark/BenchmarkExecutable.java#L11)
- Number of users to be saved into the db. Check [BenchmarkExecutable#NUM_USER_INSERTS](/ORM-Benchmark/src/main/java/com/littleinc/orm_benchmark/BenchmarkExecutable.java#L15)
- Number of messages to be saved into the db. Check [BenchmarkExecutable#NUM_MESSAGE_INSERTS](/ORM-Benchmark/src/main/java/com/littleinc/orm_benchmark/BenchmarkExecutable.java#L17)
- Number of messages with readers. Check [BenchmarkExecutable#NUM_MESSAGES_WITH_READERS](/ORM-Benchmark/src/main/java/com/littleinc/orm_benchmark/BenchmarkExecutable.java#L19)
- Number of reades on messages. Check [BenchmarkExecutable#NUM_READERS](/ORM-Benchmark/src/main/java/com/littleinc/orm_benchmark/BenchmarkExecutable.java#L13)

###Changing The GreenDao Tests 

GreenDao requires a separate project to generate the source code for database entities and DAOs.  The ORM-Benchmark-GreenDAO-Generator project is a Java application that you can run to regenerate the database definitions.  You only need to do this if you want to change the GreenDao database model! 

