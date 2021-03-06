?	???ދs7@???ދs7@!???ދs7@	 ??????? ???????! ???????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6???ދs7@?q?&J5@1zލ????A{O崧???Iq?Ws????Y??E?x??*	??????]@2U
Iterator::Model::ParallelMapV2}A	]??!B?` ?8@)}A	]??1B?` ?8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat˿?W????!??4??n8@)?5?:??1[O?3@:Preprocessing2F
Iterator::Model??
???!?<
?E?E@)m8,????1?\?ۊ?2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatev5y?j??!??H?U?5@)p
+TT??1*?OP(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????@???!7+B?[S#@)????@???17+B?[S#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?9τ&??!??a?3L@)??1v?K??1???? ?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?(B?v?u?!Ji?@)?(B?v?u?1Ji?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap4Lm?????!??T?tE9@)?X???Fq?1?` ?h@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???????I????X@Q?? ???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?q?&J5@?q?&J5@!?q?&J5@      ??!       "	zލ????zލ????!zލ????*      ??!       2	{O崧???{O崧???!{O崧???:	q?Ws????q?Ws????!q?Ws????B      ??!       J	??E?x????E?x??!??E?x??R      ??!       Z	??E?x????E?x??!??E?x??b      ??!       JGPUY???????b q????X@y?? ???@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???Ba??!???Ba??"=
sequential_203/dense_609/MatMulMatMul2??fߨ?!?~vL??0"-
IteratorGetNext/_1_Sendjw??Z~??!???A\??"=
sequential_203/dense_610/MatMulMatMul?????!_?H??=??0"=
 sequential_203/dense_611/SoftmaxSoftmax,;???!Ҧܳ???"K
-gradient_tape/sequential_203/dense_609/MatMulMatMul?;??W???!?Z?/ڙ??0"K
-gradient_tape/sequential_203/dense_610/MatMulMatMul?A[????!????	??0"=
sequential_203/dense_611/MatMulMatMul?"]?!ߖ?!??И?w??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?E;?H???!*?D"????"K
/gradient_tape/sequential_203/dense_611/MatMul_1MatMul?M7b???!
DR8??Q      Y@Y[ZZZZZ6@ajiiiiiS@q* ?~?G@y???$V??"?
both?Your program is POTENTIALLY input-bound because 90.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?47.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 