	?2??A?>@?2??A?>@!?2??A?>@	?'/z?@?'/z?@!?'/z?@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?2??A?>@???@4<@1???????A;TS?u8??I???h??YQ???x??*	Y9??v?Z@2U
Iterator::Model::ParallelMapV2߇??(_??!.?Z<??=@)߇??(_??1.?Z<??=@:Preprocessing2F
Iterator::Model?z?I|??!DCZ?K@)???B:??1X??w)?9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??%P6??!gm?	?h3@)E+??B??1?Sz?a?/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateʉvR~??!ެJ???0@)VҊo(|??1??&???$@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice{??v? }?!gT???@){??v? }?1gT???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip/??Q?(??!?????F@)b??U?u?1?߶??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor}?r???o?!8b/)?@)}?r???o?18b/)?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?P?[???!T??@?3@)?8F?G?i?1?9]?z@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?'/z?@I?W
눸W@Q$??ohD@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???@4<@???@4<@!???@4<@      ??!       "	??????????????!???????*      ??!       2	;TS?u8??;TS?u8??!;TS?u8??:	???h?????h??!???h??B      ??!       J	Q???x??Q???x??!Q???x??R      ??!       Z	Q???x??Q???x??!Q???x??b      ??!       JGPUY?'/z?@b q?W
눸W@y$??ohD@