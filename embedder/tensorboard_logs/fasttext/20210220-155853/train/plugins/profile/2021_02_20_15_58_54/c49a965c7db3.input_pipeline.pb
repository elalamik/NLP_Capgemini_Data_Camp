	ު?PM?D@ު?PM?D@!ު?PM?D@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-ު?PM?D@ ?ҥ}B@1:?=??A?c?g^??I?}9?]?
@*	??ʡEY@2U
Iterator::Model::ParallelMapV2?q:??!?˾@@)?q:??1?˾@@:Preprocessing2F
Iterator::Model?p?GRҫ?!Z,ۥ
K@)??je?/??1w?#p??4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??p???!j?1??4@)?{,GȐ?1??y?O0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate7?',????!?:?t$?1@){/?h???1?]?Q?&@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???4??z?![.?`?#@)???4??z?1[.?`?#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipϢw*????!???$Z?F@)c`?u?1?????x@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor#h?$?o?!?C'@)#h?$?o?1?C'@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap$??P??!??Ϸ4@)??;??~f?1??^&U?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?8.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIWꖊ̎X@Q$jEZ?L??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	 ?ҥ}B@ ?ҥ}B@! ?ҥ}B@      ??!       "	:?=??:?=??!:?=??*      ??!       2	?c?g^???c?g^??!?c?g^??:	?}9?]?
@?}9?]?
@!?}9?]?
@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qWꖊ̎X@y$jEZ?L??