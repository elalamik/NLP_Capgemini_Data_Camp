	\ A?cH8@\ A?cH8@!\ A?cH8@	?;]?????;]????!?;]????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6\ A?cH8@?3?ۣ6@1???s??A]T????Im???5??Y???Xm???*	6^?IU@2U
Iterator::Model::ParallelMapV2??0a4+??!?3U?z?@)??0a4+??1?3U?z?@:Preprocessing2F
Iterator::Model½2o?u??!u?Gj}WL@)?4}v???1<?[49@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat*Ral!ȑ?!??c?{?4@)V?Z???1"??F-1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate}??z?V??!??z6X3,@)??p?Qex?1?m5?ZD@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceMLb?Gx?!+???U"@)MLb?Gx?1+???U"@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipB?4-???!?y????E@)-?LN?s?1????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???1??g?!?v??i@)???1??g?1?v??i@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??mP????!?A[??11@)???V_]e?1NY??F?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?;]????I??8j?[X@Q|yDM??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?3?ۣ6@?3?ۣ6@!?3?ۣ6@      ??!       "	???s?????s??!???s??*      ??!       2	]T????]T????!]T????:	m???5??m???5??!m???5??B      ??!       J	???Xm??????Xm???!???Xm???R      ??!       Z	???Xm??????Xm???!???Xm???b      ??!       JGPUY?;]????b q??8j?[X@y|yDM??@