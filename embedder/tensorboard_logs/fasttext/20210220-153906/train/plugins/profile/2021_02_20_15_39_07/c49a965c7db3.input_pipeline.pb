	I/j???@@I/j???@@!I/j???@@	????????????!??????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6I/j???@@?(	???>@1??eO???At?v?4E??I??D-ͭ??Y?Բ??H??*	?x?&1?V@2U
Iterator::Model::ParallelMapV2ݳ??r??!B,3?^?A@)ݳ??r??1B,3?^?A@:Preprocessing2F
Iterator::Modelͮ{+??!??쵛+M@)?????>??1??r?y?6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatz?(???!?????4@)???B?i??1?q1??b0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatey?z?L???!JXz?l*@)5)?^?x?1O??'?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????:8x?!D?]?@)????:8x?1D?]?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?]???T??!]iJd?D@)0?Qd??t?1jJF3F;@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??m?2k?!???c~N@)??m?2k?1???c~N@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?ǁWˍ?!???Rl0@)?0?*e?1@{d???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??????Iz?Z??DX@QQ?òŦ@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?(	???>@?(	???>@!?(	???>@      ??!       "	??eO?????eO???!??eO???*      ??!       2	t?v?4E??t?v?4E??!t?v?4E??:	??D-ͭ????D-ͭ??!??D-ͭ??B      ??!       J	?Բ??H???Բ??H??!?Բ??H??R      ??!       Z	?Բ??H???Բ??H??!?Բ??H??b      ??!       JGPUY??????b qz?Z??DX@yQ?òŦ@