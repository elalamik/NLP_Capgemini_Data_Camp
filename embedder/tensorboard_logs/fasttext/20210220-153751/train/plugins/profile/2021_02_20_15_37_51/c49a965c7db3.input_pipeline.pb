	?+?P??@?+?P??@!?+?P??@	-?S&????-?S&????!-?S&????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?+?P??@??E|'r=@1??B:<??A??n??o??I??q4G???Y???x???*	?x?&1?T@2U
Iterator::Model::ParallelMapV2}>ʈ??!ջ?$?C@)}>ʈ??1ջ?$?C@:Preprocessing2F
Iterator::Model1?:9Cq??!~݅q?K@)w???閍?1TC????1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat9?CmF??!L7}8?4@)?)??ŋ?1V?L??|0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceAgҦ?y?!??,?6?@)AgҦ?y?1??,?6?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?)Wx????!?B?L$-@)%??ID?w?1v?X?bu@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?6?xͫ??!?"z??*F@)?@?C?r?1?mr??`@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor4??`k?!?2?oB@)4??`k?1?2?oB@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap$???9"??!?] ed{2@)??Q??Zj?1?????I@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9-?S&????IA?4ћ0X@Qk??O??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??E|'r=@??E|'r=@!??E|'r=@      ??!       "	??B:<????B:<??!??B:<??*      ??!       2	??n??o????n??o??!??n??o??:	??q4G?????q4G???!??q4G???B      ??!       J	???x??????x???!???x???R      ??!       Z	???x??????x???!???x???b      ??!       JGPUY-?S&????b qA?4ћ0X@yk??O??@