	y?t???E@y?t???E@!y?t???E@	???5?8?????5?8??!???5?8??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6y?t???E@G>?x?cD@1Y0?GQg??AU?2?F??I????V?@Y? ????*	??C?lV@2U
Iterator::Model::ParallelMapV2"??T2 ??!+
?S?F@)"??T2 ??1+
?S?F@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat͑?_??!e????4@)D0.s??1>?)?<?0@:Preprocessing2F
Iterator::ModelO?9?????!@ \???L@)??KqUه?1UX4??Q*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice5)?^?x?!Ge?~?d@)5)?^?x?1Ge?~?d@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate@7n1???!??s???)@)Ki??u?1?-$r??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipD??)X??!?ߣ.YE@)???#ӡs?1?~x?\?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorҧU??fn?!?(?YK?@)ҧU??fn?1?(?YK?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapl?u????!z?݅?H0@)???0i?1}MM??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???5?8??I}?a??uX@QN0????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	G>?x?cD@G>?x?cD@!G>?x?cD@      ??!       "	Y0?GQg??Y0?GQg??!Y0?GQg??*      ??!       2	U?2?F??U?2?F??!U?2?F??:	????V?@????V?@!????V?@B      ??!       J	? ????? ????!? ????R      ??!       Z	? ????? ????!? ????b      ??!       JGPUY???5?8??b q}?a??uX@yN0????