	?\6:?uC@?\6:?uC@!?\6:?uC@	??ҫ+?????ҫ+???!??ҫ+???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?\6:?uC@i?"??A@1?`??w???A&??)???I?L1Ag@Y?{?O???*	?j?t?]@2U
Iterator::Model::ParallelMapV2??l ]??!49?P?A@)??l ]??149?P?A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat`???Y??!?C???9@)^emS<.??1o2p??6@:Preprocessing2F
Iterator::ModelQ???????!ya?J@)?ΡU1??1??+??1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???0X??!?????@)???0X??1?????@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??+ٱ??!?&??;?-@)R?o&???1?m???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipUMu???!????A?G@)#k??"z?1?c? b?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor辜ٮp?!ܴ???@)辜ٮp?1ܴ???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap? @????!%??9?0@)??֪]c?1?????H @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??ҫ+???I#???AX@Q??ƶ@ @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	i?"??A@i?"??A@!i?"??A@      ??!       "	?`??w????`??w???!?`??w???*      ??!       2	&??)???&??)???!&??)???:	?L1Ag@?L1Ag@!?L1Ag@B      ??!       J	?{?O????{?O???!?{?O???R      ??!       Z	?{?O????{?O???!?{?O???b      ??!       JGPUY??ҫ+???b q#???AX@y??ƶ@ @