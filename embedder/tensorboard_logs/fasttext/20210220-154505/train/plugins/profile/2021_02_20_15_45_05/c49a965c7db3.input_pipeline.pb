	??fd?#9@??fd?#9@!??fd?#9@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??fd?#9@B!??6@1t?5=((??A???????I?7iM??*	㥛? pZ@2U
Iterator::Model::ParallelMapV2?=~oӟ?!??B?c=@)?=~oӟ?1??B?c=@:Preprocessing2F
Iterator::ModelP ?Ȓ9??!?;?:?K@)??L????1g٢??n:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatcAaP?є?!@R???93@)O ????1.?W?q/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?h??????!?u?ZC? @)?h??????1?u?ZC? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipF"4?????!?
??F@)O??D???1??5?X@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?k???D??!
n?[3.@)???8}?1?????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????Wn?!@1??0@)????Wn?1@1??0@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??"???!wPwEߝ1@)͓k
dvf?1??P?,?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIC????wX@Q?w???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	B!??6@B!??6@!B!??6@      ??!       "	t?5=((??t?5=((??!t?5=((??*      ??!       2	??????????????!???????:	?7iM???7iM??!?7iM??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qC????wX@y?w???@