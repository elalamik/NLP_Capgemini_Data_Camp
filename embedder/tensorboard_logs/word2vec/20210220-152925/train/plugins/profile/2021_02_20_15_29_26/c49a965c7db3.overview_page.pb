?	?Ljh`@@?Ljh`@@!?Ljh`@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?Ljh`@@X??V??>@1@?P???Aq=
ףp??I%A?
???*	?C?l?c]@2U
Iterator::Model::ParallelMapV2??2?Pl??!??????A@)??2?Pl??1??????A@:Preprocessing2F
Iterator::Model,?p?{???!o?<?jO@)?ݮ????1???Y?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?b?????!?䥺?1@)ȗP????1??p?H,@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice*??????!~?.̓?@)*??????1~?.̓?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?|?.PR??!????+@)?y??Q}?1#6?N?Z@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?F?q????!?h?8??B@)I?2???v?15???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor>??ml?!?kw??@)>??ml?1?kw??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapG?q??>??!?R??"?/@)??)t^cg?1̯?H?m@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI.?i?O?X@Qrt?e???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	X??V??>@X??V??>@!X??V??>@      ??!       "	@?P???@?P???!@?P???*      ??!       2	q=
ףp??q=
ףp??!q=
ףp??:	%A?
???%A?
???!%A?
???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q.?i?O?X@yrt?e????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?P+?On??!?P+?On??"=
sequential_178/dense_534/MatMulMatMul???{yp??!?7E??0"=
 sequential_178/dense_536/SoftmaxSoftmax=?H???!^2???&??"=
sequential_178/dense_535/MatMulMatMull???A??!??b????0"-
IteratorGetNext/_2_Recv_?S ?>??!kH?✾??"K
-gradient_tape/sequential_178/dense_535/MatMulMatMul???????!vb??e]??0"K
-gradient_tape/sequential_178/dense_534/MatMulMatMul?0?x???!5?o????0"=
sequential_178/dense_536/MatMulMatMulb.?wՖ?!e8??4I??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamB?Y?Ŗ?!	
<'????"K
/gradient_tape/sequential_178/dense_535/MatMul_1MatMul?+N????!??``???Q      Y@Y[ZZZZZ6@ajiiiiiS@qܡ??}/R@y?q??N???"?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?72.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 