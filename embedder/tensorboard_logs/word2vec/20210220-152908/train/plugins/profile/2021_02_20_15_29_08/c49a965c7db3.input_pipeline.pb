	?@?M?1C@?@?M?1C@!?@?M?1C@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?@?M?1C@?
???A@1?4?\????Al%t??Y??I??b?d??*	S㥛??S@2U
Iterator::Model::ParallelMapV2h$B#ظ??!??+?B@)h$B#ظ??1??+?B@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatE?D??2??!????>6@)???s?v??1??$Z2@:Preprocessing2F
Iterator::Model?P3?????!:C#???J@)n?HJz??1??tAj?/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?ۼqRx?!??wd?@)?ۼqRx?1??wd?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate稣?jd??!?h=?k?,@)͓k
dvv?1z??ru@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???Dh??!Ƽ?CI?G@)?9??q?u?1??r&?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???*øk?!?????@)???*øk?1?????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??
?H???!?Y _E?1@)@Û5x_e?1*?| 
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?? ˤX@Q,M?w;???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?
???A@?
???A@!?
???A@      ??!       "	?4?\?????4?\????!?4?\????*      ??!       2	l%t??Y??l%t??Y??!l%t??Y??:	??b?d????b?d??!??b?d??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?? ˤX@y,M?w;???