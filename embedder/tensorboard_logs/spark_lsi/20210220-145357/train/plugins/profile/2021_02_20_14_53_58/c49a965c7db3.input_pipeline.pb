	N
?gZF@N
?gZF@!N
?gZF@	?cy|?????cy|????!?cy|????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6N
?gZF@?C?bHA@1eȱ????AU?????I??:8?? @Yެ?????*	1?Z?U@2U
Iterator::Model::ParallelMapV2^?SH??!???p?@@)^?SH??1???p?@@:Preprocessing2F
Iterator::Model?E}?;l??!'?Fs?lM@)8-x?W???1??ev? 9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatv??y?]??!oV?s4@)l?<*??1??????0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice6l??gu?!???s?@)6l??gu?1???s?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipwٯ;?y??!?A????D@)NA~6r?t?1??U?P<@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?$A?
??!?t?\?m'@)?*?)?t?1???n@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???$xCj?!?XKf[?@)???$xCj?1?XKf[?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapH??ߠ???!?\/e?-@)?Nw?x?f?1?3?I?e	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 77.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?19.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?cy|????I?.?"xbX@Q??7????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?C?bHA@?C?bHA@!?C?bHA@      ??!       "	eȱ????eȱ????!eȱ????*      ??!       2	U?????U?????!U?????:	??:8?? @??:8?? @!??:8?? @B      ??!       J	ެ?????ެ?????!ެ?????R      ??!       Z	ެ?????ެ?????!ެ?????b      ??!       JGPUY?cy|????b q?.?"xbX@y??7????