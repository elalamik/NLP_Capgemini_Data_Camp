	?Q???A@?Q???A@!?Q???A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?Q???A@????@@1F?N????A??????I??G7??*	?n???Z@2U
Iterator::Model::ParallelMapV2?{,}肚?!;25?/8@)?{,}肚?1;25?/8@:Preprocessing2F
Iterator::Model?6qr?C??!?^???G@)???g???1d??h?5@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????Li??!y????:@)????????1??e<ޡ3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatN^d~???!?[??2@)?????P??1Q?zC?/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicejP4`??!=?<J??@)jP4`??1=?<J??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???????!0?sk?J@)?? ???u?1ۍ??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??};???!?%ZV,>@)???QIm?1f
,;޷
@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorG????i?!}??\ȟ@)G????i?1}??\ȟ@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?????X@Q???X??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????@@????@@!????@@      ??!       "	F?N????F?N????!F?N????*      ??!       2	????????????!??????:	??G7????G7??!??G7??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?????X@y???X??