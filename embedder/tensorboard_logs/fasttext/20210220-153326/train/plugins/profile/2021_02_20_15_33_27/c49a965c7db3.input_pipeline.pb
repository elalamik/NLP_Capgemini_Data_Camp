	Eh??8@Eh??8@!Eh??8@	??-진????-진??!??-진??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6Eh??8@?R%???6@1????q??Affffff??I??};???Y@?3iSu??*	??ʡEj`@2U
Iterator::Model::ParallelMapV2?Ԗ:????!Z!??]?:@)?Ԗ:????1Z!??]?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??Û5x??!?'m?f7@)X?l:???1?j(?* 3@:Preprocessing2F
Iterator::Model?-???1??!?+?i[tF@):???`???1G68YA2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?}V?)??!|$¯5@)??????1?^g??*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceު?PMI??!a?3??? @)ު?PMI??1a?3??? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?wD???!.?t???K@)eQ?E??1y<+?h@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?pY?? w?!???G.@)?pY?? w?1???G.@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapN?a??m??!(?v?8?9@)q:?v?1??Ka??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??-진??I??Z?vbX@Qm?<n ???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?R%???6@?R%???6@!?R%???6@      ??!       "	????q??????q??!????q??*      ??!       2	ffffff??ffffff??!ffffff??:	??};?????};???!??};???B      ??!       J	@?3iSu??@?3iSu??!@?3iSu??R      ??!       Z	@?3iSu??@?3iSu??!@?3iSu??b      ??!       JGPUY??-진??b q??Z?vbX@ym?<n ???