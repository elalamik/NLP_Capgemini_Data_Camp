	@????KB@@????KB@!@????KB@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-@????KB@?a??m?@1ٵ?ݒ??A?M?G????I?i??&{@*	?&1?\W@2U
Iterator::Model::ParallelMapV2J?GW???!U????&@@)J?GW???1U????&@@:Preprocessing2F
Iterator::Model??b?dU??!{?f4	?M@)?I?%r???1L?)u^?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat(??9x&??!gjiv?5@)Ę??Rx??1q???261@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?D??)x?!@?W?@@)?D??)x?1@?W?@@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?U?pA??!????B'@)??lXSYt?1	???C@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??]????!?X???cD@)=?u??s?1:???y?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor C?*qm?!????@) C?*qm?1????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap0h!?ˋ?!(??_-@)bJ$??(f?1??rB(@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 85.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?11.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?k?t7|X@Q?Roy @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?a??m?@?a??m?@!?a??m?@      ??!       "	ٵ?ݒ??ٵ?ݒ??!ٵ?ݒ??*      ??!       2	?M?G?????M?G????!?M?G????:	?i??&{@?i??&{@!?i??&{@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?k?t7|X@y?Roy @