	?6????@@?6????@@!?6????@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?6????@@<?l???@1vR_?vj??A9% &?B??I?\?h??*	?ʡE??S@2U
Iterator::Model::ParallelMapV2?q??Q???!9N"u?@@)?q??Q???19N"u?@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???]M???!۷?9uA7@)E)!XU/??1?QZ??y3@:Preprocessing2F
Iterator::Model3Q??????!F=?^n?H@)?a??A??1޽?Q?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???????!p?W??71@)??v?
?}?1??y?"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?J[\?3y?!??l??z@)?J[\?3y?1??l??z@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip=??S???!??~??I@)׆?q?&t?1?eZ?+@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???5h?!/c˛<@)???5h?1/c˛<@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap-|}?K???!4?????4@))H4?"f?1"~?R??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI_צ???X@QL(JV?W??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	<?l???@<?l???@!<?l???@      ??!       "	vR_?vj??vR_?vj??!vR_?vj??*      ??!       2	9% &?B??9% &?B??!9% &?B??:	?\?h???\?h??!?\?h??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q_צ???X@yL(JV?W??