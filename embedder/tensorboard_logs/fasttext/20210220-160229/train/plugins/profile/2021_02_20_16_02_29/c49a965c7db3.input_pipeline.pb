	??,z?A@??,z?A@!??,z?A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??,z?A@??\QJ?@@1??ME*???AϿ]??N??I????n???*	-????_@2U
Iterator::Model::ParallelMapV2h\W???!(͑0?7@)h\W???1(͑0?7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?uT5Aԝ?!ȅ ??6@)???????1Lϰb(3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?O??0{??![?N)?:@)!???Ƙ?1??????2@:Preprocessing2F
Iterator::Model????=??!1??|cD@)?(?r??1;2Pg?q0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice)狽_??!^??z?<@))狽_??1^??z?<@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???<?|??!?]q???M@),I???p??1_vH??5@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap Tq????!>?U?>@))!XU/?s?1W|}?G@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??֪]s?!??z??@)??֪]s?1??z??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??$s??X@Q???6???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??\QJ?@@??\QJ?@@!??\QJ?@@      ??!       "	??ME*?????ME*???!??ME*???*      ??!       2	Ͽ]??N??Ͽ]??N??!Ͽ]??N??:	????n???????n???!????n???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??$s??X@y???6???