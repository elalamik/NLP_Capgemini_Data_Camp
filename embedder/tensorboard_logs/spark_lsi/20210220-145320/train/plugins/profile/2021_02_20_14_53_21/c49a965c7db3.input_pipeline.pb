	Xt?5=?<@Xt?5=?<@!Xt?5=?<@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-Xt?5=?<@g?;p?:@1?A?F??A?h?󊧦?I=I?f????*	?
ףp%Z@2F
Iterator::ModelJ?????!?8?2?O@).?Ue???1b*5??@:Preprocessing2U
Iterator::Model::ParallelMapV2?x>?͠?!a\?:?a?@)?x>?͠?1a\?:?a?@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat}?|??!]?qT0@):̗`??1z?D
u1+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???Za??!6I???(@)K?H??rz?1㶽??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceT?^Pz?!?K?ʑ@)T?^Pz?1?K?ʑ@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipک??`???!L?T??ZB@)`=?[?w?1?œ>K?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?2?gg?!?d?_??@)?2?gg?1?d?_??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapߤiP4??!?+г??-@)B??K8?f?1ө??n@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?? p?X@QH
??????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	g?;p?:@g?;p?:@!g?;p?:@      ??!       "	?A?F???A?F??!?A?F??*      ??!       2	?h?󊧦??h?󊧦?!?h?󊧦?:	=I?f????=I?f????!=I?f????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?? p?X@yH
??????