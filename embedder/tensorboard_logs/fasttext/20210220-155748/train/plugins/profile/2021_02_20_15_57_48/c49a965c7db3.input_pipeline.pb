	??????F@??????F@!??????F@	??G"0 ????G"0 ??!??G"0 ??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??????F@???5~D@128J^????Aj?!?
??I????n@Y?`??w}??*	????M?f@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat$%=?N??!??t?e?K@)???????1?,??J@:Preprocessing2U
Iterator::Model::ParallelMapV2w0b? ???!???*?2@)w0b? ???1???*?2@:Preprocessing2F
Iterator::Model8I?Ǵ6??!F?aW?@)?1"QhY??1?????(@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateQS?'???!%?z??@)???u?}?1??I???@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?L?T}?!V??p5@)?L?T}?1V??p5@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?9>Z?1??!??'*?:Q@)? ??x?1S??a?
@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?yȔAu?!??{f?@)?yȔAu?1??{f?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap5?l?/??!>4?foY#@)?R]??k?1X%O????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?8.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??G"0 ??I???H?X@Q cM?????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???5~D@???5~D@!???5~D@      ??!       "	28J^????28J^????!28J^????*      ??!       2	j?!?
??j?!?
??!j?!?
??:	????n@????n@!????n@B      ??!       J	?`??w}???`??w}??!?`??w}??R      ??!       Z	?`??w}???`??w}??!?`??w}??b      ??!       JGPUY??G"0 ??b q???H?X@y cM?????