	?*øT9@?*øT9@!?*øT9@	?n???????n??????!?n??????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?*øT9@'??0?b7@1C??À??A?W)???I?J?*n??Y????6??*	????K?W@2U
Iterator::Model::ParallelMapV2Z???
G??!??9ٱ?@@)Z???
G??1??9ٱ?@@:Preprocessing2F
Iterator::Model?a???L??!/{c "M@)?-X???1??RN??8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatF??(&o??!?????0@)??f?R@??1???!+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateT ?g?Џ?!R?AwF`0@)??Z???1a???0!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????;~?!????X@)????;~?1????X@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?M?#E??!Є????D@)??2Wu?18W?Ĥ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor%???wj?!,?DoW?@)%???wj?1,?DoW?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapg???ْ?!???C?g3@)?6S!?g?1h??dv:@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?n??????I?OMz?EX@Q?&?ΣF@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	'??0?b7@'??0?b7@!'??0?b7@      ??!       "	C??À??C??À??!C??À??*      ??!       2	?W)????W)???!?W)???:	?J?*n???J?*n??!?J?*n??B      ??!       J	????6??????6??!????6??R      ??!       Z	????6??????6??!????6??b      ??!       JGPUY?n??????b q?OMz?EX@y?&?ΣF@