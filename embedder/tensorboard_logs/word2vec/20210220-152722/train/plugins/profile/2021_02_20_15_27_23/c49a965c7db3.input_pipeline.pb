	LTolD@LTolD@!LTolD@	:hL
i???:hL
i???!:hL
i???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6LTolD@V(????B@1??#p??AK?46??I????O??YJ
,?)??*	@5^?I|Y@2U
Iterator::Model::ParallelMapV22: 	?v??!???@?A@)2: 	?v??1???@?A@:Preprocessing2F
Iterator::Model?V횐??!????GM@)??l??3??1@X?V?.7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat|?ڥ???!???\?4@)?4?Op??1??*???0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?(??0y?!?%c?!@)?(??0y?1?%c?!@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate؃I??	??!????v?'@)"ߥ?%?x?1&:?FL?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipS???"???!R?zY?D@)nm?y??x?1w?S?@?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensordZ???Zp?!=4?U@)dZ???Zp?1=4?U@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????
??!RT???-@)G?ŧ h?1??R?S?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9;hL
i???IJOK?6X@Q~??{;??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	V(????B@V(????B@!V(????B@      ??!       "	??#p????#p??!??#p??*      ??!       2	K?46??K?46??!K?46??:	????O??????O??!????O??B      ??!       J	J
,?)??J
,?)??!J
,?)??R      ??!       Z	J
,?)??J
,?)??!J
,?)??b      ??!       JGPUY;hL
i???b qJOK?6X@y~??{;??