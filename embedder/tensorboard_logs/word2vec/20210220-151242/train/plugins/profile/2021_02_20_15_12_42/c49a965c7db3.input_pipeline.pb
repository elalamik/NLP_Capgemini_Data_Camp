	zm6Vb:@zm6Vb:@!zm6Vb:@	?[?5J? @?[?5J? @!?[?5J? @"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6zm6Vb:@/???27@1?jׄ????A??&?+???I?*4?f??Y???x??*	?$??3V@2U
Iterator::Model::ParallelMapV2?:s	ߛ?!?????>@)?:s	ߛ?1?????>@:Preprocessing2F
Iterator::Model^=?1X??!??1??K@)1??Zі?1?\?p~9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???????!.1{{4@)?y????1 ??0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?5?ڋh??!?W???#.@))\???(|?1??Umd?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice0??!?z?!???6P@)0??!?z?1???6P@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?x#????!Hu??3!F@)׆?q?&t?1?GcT!)@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??Q??Zj?!??0???@)??Q??Zj?1??0???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?Y,E????!z?i=2@)'??bg?1??E??Y	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?[?5J? @IK?2?s?W@Q???>@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	/???27@/???27@!/???27@      ??!       "	?jׄ?????jׄ????!?jׄ????*      ??!       2	??&?+?????&?+???!??&?+???:	?*4?f???*4?f??!?*4?f??B      ??!       J	???x?????x??!???x??R      ??!       Z	???x?????x??!???x??b      ??!       JGPUY?[?5J? @b qK?2?s?W@y???>@