	;?ʃ?<7@;?ʃ?<7@!;?ʃ?<7@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-;?ʃ?<7@8N
?S5@1ya?X5??A?4?????I.??M???*	??C??V@2F
Iterator::Model?u??=??!??H??N@)؀q????1Y?????@:Preprocessing2U
Iterator::Model::ParallelMapV2fj?!???!??y2?F<@)fj?!???1??y2?F<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat섗????!?uq?33@)????
??1??9???/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate/???0??!/??W?)@)??%jjy?1rw??T@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicep????v?!?*u?Z'@)p????v?1?*u?Z'@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?˛õ??!?j?C@)fL?g?q?1P ?@?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?A??h?!@5??(?	@)?A??h?1@5??(?	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?۞ ?ݍ?!"w???/@))_?BFg?1?C??G?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIr?m?tX@Q(??A?o@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	8N
?S5@8N
?S5@!8N
?S5@      ??!       "	ya?X5??ya?X5??!ya?X5??*      ??!       2	?4??????4?????!?4?????:	.??M???.??M???!.??M???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qr?m?tX@y(??A?o@