	??Ft?:@??Ft?:@!??Ft?:@	?I? ?????I? ????!?I? ????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??Ft?:@???[?7@1vT5A?}??A???Fu:??I?D???\??Yd??ǚ??*	W-???V@2U
Iterator::Model::ParallelMapV2n??Ũ??!d!꫅=@)n??Ũ??1d!꫅=@:Preprocessing2F
Iterator::Model?)H4??!#????J@)??ʅʿ??1?J^H8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatm8,????!;Lg?/8@)s?SrN???1?U!?U!3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?y9??c??!B?wXE*@)???d#y?1???S??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?jf-???!???%G@){??x?1ؽؽ@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?^?sa?w?!??h]<@)?^?sa?w?1??h]<@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?wak??r?!?ٳ7j9@)?wak??r?1?ٳ7j9@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?v??/??!??K&/@)???n-c?1?N5x@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?I? ????I:?Y?.aX@Q}הּ? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???[?7@???[?7@!???[?7@      ??!       "	vT5A?}??vT5A?}??!vT5A?}??*      ??!       2	???Fu:?????Fu:??!???Fu:??:	?D???\???D???\??!?D???\??B      ??!       J	d??ǚ??d??ǚ??!d??ǚ??R      ??!       Z	d??ǚ??d??ǚ??!d??ǚ??b      ??!       JGPUY?I? ????b q:?Y?.aX@y}הּ? @