	?=$|??@@?=$|??@@!?=$|??@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?=$|??@@\??.??=@1[?*?M???A2 Ǟ=??II??_? @*	+?ٞV@2U
Iterator::Model::ParallelMapV2Q??lu??!1??)??B@)Q??lu??11??)??B@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatUj?@+0??!?w???5@) ?!p$??1[???l1@:Preprocessing2F
Iterator::Model?b??	???!???^?vJ@)AEկt>??1?}???{.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???P1??!?ޥ??)!@)???P1??1?ޥ??)!@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateX?L??~??!?A???t0@)?v??/}?1NIt{@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?x$^?Υ?!eV<?B?G@)??0Xru?1l&JP?%@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?|?|?.p?!,???iw@)?|?|?.p?1,???iw@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?bFx{??!??Fo'3@)x` ?C?f?1?N???R@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?7.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI  (dX@Q ??z@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	\??.??=@\??.??=@!\??.??=@      ??!       "	[?*?M???[?*?M???![?*?M???*      ??!       2	2 Ǟ=??2 Ǟ=??!2 Ǟ=??:	I??_? @I??_? @!I??_? @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q  (dX@y ??z@