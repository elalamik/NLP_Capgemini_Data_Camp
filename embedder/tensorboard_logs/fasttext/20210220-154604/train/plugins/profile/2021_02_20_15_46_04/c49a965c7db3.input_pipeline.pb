	JzZ??@@JzZ??@@!JzZ??@@		V?M?r??	V?M?r??!	V?M?r??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6JzZ??@@?&?%??>@1??b???A?2??(??I?X?;?@YD?|?F??*?p=
??V@)      =2U
Iterator::Model::ParallelMapV2??;jL???!\?+?>?B@)??;jL???1\?+?>?B@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeato?ꐛ???!??}?x8@)?:r?30??1w)?u?s3@:Preprocessing2F
Iterator::Model2???A???!t.???LJ@)?($??;??1c??a/2.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?J?E?}?!??}???@)?J?E?}?1??}???@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?c?3?%??!??w??-@)u?Rz??x?1?rN6M@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip΋_?(??!??jZ5?G@),am???r?1D????A@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??ᱟ?r?!?<??@)??ᱟ?r?1?<??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap? !????!?~J?1@)yxρ?i?1???FT?
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9V?M?r??Iݭ?y?IX@Q??7???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?&?%??>@?&?%??>@!?&?%??>@      ??!       "	??b?????b???!??b???*      ??!       2	?2??(???2??(??!?2??(??:	?X?;?@?X?;?@!?X?;?@B      ??!       J	D?|?F??D?|?F??!D?|?F??R      ??!       Z	D?|?F??D?|?F??!D?|?F??b      ??!       JGPUYV?M?r??b qݭ?y?IX@y??7???@