	M??EB@M??EB@!M??EB@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-M??EB@?T?G??@@1???????An???a??I߿yq????*	V-??7T@2U
Iterator::Model::ParallelMapV2.Y?&???!??F?Z@@).Y?&???1??F?Z@@:Preprocessing2F
Iterator::Model5(??ȧ?!?a???L@)<?.9???1~?4??F9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?????R??!f@տ??4@):d?w??1?????41@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate,?)???!????< )@)Xr??t?1?W?^?4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceL?????t?!5?D0??@)L?????t?15?D0??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??T????!B??CcGE@)??@??s?1????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor3?FY??h?!]????@)3?FY??h?1]????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?T?-????!1K??eT/@)3R臭?d?1??zݤP	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??F??X@Q??L?~???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?T?G??@@?T?G??@@!?T?G??@@      ??!       "	??????????????!???????*      ??!       2	n???a??n???a??!n???a??:	߿yq????߿yq????!߿yq????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??F??X@y??L?~???