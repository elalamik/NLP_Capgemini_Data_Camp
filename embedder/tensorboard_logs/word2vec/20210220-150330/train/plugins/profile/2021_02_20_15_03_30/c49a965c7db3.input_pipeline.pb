	
???%ZB@
???%ZB@!
???%ZB@	R0???u??R0???u??!R0???u??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6
???%ZB@3܀???@1vöE???AŬC9Ѧ?IU?????@Y?S?D?[??*	????҅X@2U
Iterator::Model::ParallelMapV2k{?????!???K?@@)k{?????1???K?@@:Preprocessing2F
Iterator::Model?|гY???!?Lq???I@)4ڪ$???1???4?1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatE??b???!V)?}??5@)p$?`S???1?{??1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateKvl?u??!?C??tT-@)??????1?!?`?!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipf???C??!(??>(H@)?b?J!??1tm?? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice7ݲC??v?!?
]?'?@)7ݲC??v?1?
]?'?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap46<???!??6,??2@)~?k?,	p?1?#s???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?ng_y?n?!?k???m@)?ng_y?n?1?k???m@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 86.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?12.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9R0???u??I 4?>??X@Q???c?&??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	3܀???@3܀???@!3܀???@      ??!       "	vöE???vöE???!vöE???*      ??!       2	ŬC9Ѧ?ŬC9Ѧ?!ŬC9Ѧ?:	U?????@U?????@!U?????@B      ??!       J	?S?D?[???S?D?[??!?S?D?[??R      ??!       Z	?S?D?[???S?D?[??!?S?D?[??b      ??!       JGPUYR0???u??b q 4?>??X@y???c?&??