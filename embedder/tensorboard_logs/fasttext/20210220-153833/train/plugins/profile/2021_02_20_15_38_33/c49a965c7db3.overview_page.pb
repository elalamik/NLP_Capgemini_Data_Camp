?	W??,??7@W??,??7@!W??,??7@	F?d<y??F?d<y??!F?d<y??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6W??,??7@?z?ю?5@12=a????A????/???I?_??m??Y??c??3??*	?p=
?[W@2U
Iterator::Model::ParallelMapV2:??KT??!2,??Q_@@):??KT??12,??Q_@@:Preprocessing2F
Iterator::Model??N@a??!???L@)=???m??1P???|8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?N?`????!LwF??4@)?_{fI??1??jv?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate:@0G?ߋ?!_;??!-@)?	MK?}?1l? e?"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?v|??y?!??Uw!@)?v|??y?1??Uw!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??K?u??!&???CbE@)??y??q?1?b?Ɂ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??Q,??j?!\?|??@)??Q,??j?1\?|??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??25	ސ?!`pC?1@)?<֌rg?1n_6?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9F?d<y??I???<?.X@Q$:L??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?z?ю?5@?z?ю?5@!?z?ю?5@      ??!       "	2=a????2=a????!2=a????*      ??!       2	????/???????/???!????/???:	?_??m???_??m??!?_??m??B      ??!       J	??c??3????c??3??!??c??3??R      ??!       Z	??c??3????c??3??!??c??3??b      ??!       JGPUYF?d<y??b q???<?.X@y$:L??@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits ??[<??! ??[<??"-
IteratorGetNext/_1_Send???j??!?V;A??"=
sequential_211/dense_633/MatMulMatMul??z??z??!?hIS?0??0"K
-gradient_tape/sequential_211/dense_633/MatMulMatMulGq%?E??!??{????0"=
 sequential_211/dense_635/SoftmaxSoftmaxT??Y????!???????"=
sequential_211/dense_634/MatMulMatMul???ě?!/??????0"K
/gradient_tape/sequential_211/dense_634/MatMul_1MatMul+?KW???!???L)??"K
/gradient_tape/sequential_211/dense_635/MatMul_1MatMul+?KW???!?R?????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?o????!????$??"K
-gradient_tape/sequential_211/dense_634/MatMulMatMul?$׆??!W?02???0Q      Y@Y[ZZZZZ6@ajiiiiiS@qo???Y?H@y?Ol%????"?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?49.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 