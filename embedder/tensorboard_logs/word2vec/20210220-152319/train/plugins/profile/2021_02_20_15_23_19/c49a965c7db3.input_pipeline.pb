	3܀??C@3܀??C@!3܀??C@	?:?????:????!?:????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails63܀??C@vl?ukB@1@?Ŋ???A?rk?m???I?'??9x @Yk`?????*	?v???q@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat@?R??!?ù:cQ@)?~T???1D?? Q@:Preprocessing2U
Iterator::Model::ParallelMapV2?u?T??!????|'@)?u?T??1????|'@:Preprocessing2F
Iterator::Model3??p?ܬ?!6??|?3@)c	kc섗?1b???& @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??a?????!Y???@)-[닄???1??85?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip^??v1??!3x?ŠT@)0??9|?1	???a@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????Iz?!<>???@)????Iz?1<>???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorp$?`S?q?!??+?????)p$?`S?q?1??+?????:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapnē?????!_????j @)??9??g?1?.|??_??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?:????ICQ?aX@Q?uy?& @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	vl?ukB@vl?ukB@!vl?ukB@      ??!       "	@?Ŋ???@?Ŋ???!@?Ŋ???*      ??!       2	?rk?m????rk?m???!?rk?m???:	?'??9x @?'??9x @!?'??9x @B      ??!       J	k`?????k`?????!k`?????R      ??!       Z	k`?????k`?????!k`?????b      ??!       JGPUY?:????b qCQ?aX@y?uy?& @