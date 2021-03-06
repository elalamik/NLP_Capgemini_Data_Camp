?	?-X?8@?-X?8@!?-X?8@	????e??????e??!????e??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?-X?8@?Ԗ:?;6@1]?mO????AWAt???I???????Yl|&??i??*	^?I?S@2U
Iterator::Model::ParallelMapV2?z????!;yQ??@)?z????1;yQ??@:Preprocessing2F
Iterator::Model??Sr3??!M????H@)QO?????1^??0S?1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeats??c?Ȑ?!Tw???4@)?4?ׂދ?1??#?01@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??:???!?@pI2?5@)
?2?&??1ٿ_?8?,@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicea?4??ox?!e?X$@)a?4??ox?1e?X$@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip@?0`?U??!?]?-I@)X9??v?o?1?UYuߓ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor.8??_?f?!%͛R?@).8??_?f?1%͛R?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?{?????!???Zj?8@)??u??a?1J????	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????e??I#1ÞRX@Q;&?f??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Ԗ:?;6@?Ԗ:?;6@!?Ԗ:?;6@      ??!       "	]?mO????]?mO????!]?mO????*      ??!       2	WAt???WAt???!WAt???:	??????????????!???????B      ??!       J	l|&??i??l|&??i??!l|&??i??R      ??!       Z	l|&??i??l|&??i??!l|&??i??b      ??!       JGPUY????e??b q#1ÞRX@y;&?f??@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?z?{????!?z?{????"=
sequential_113/dense_339/MatMulMatMul??C`s???!m?S???0"-
IteratorGetNext/_1_Sendzs?m??!ͥQdN??"=
 sequential_113/dense_341/SoftmaxSoftmax??I՗??!???^???"K
-gradient_tape/sequential_113/dense_339/MatMulMatMul!??-????!5l?AO???0"=
sequential_113/dense_340/MatMulMatMulX?08K???!zyW?????0"K
/gradient_tape/sequential_113/dense_341/MatMul_1MatMulI2ܮ=???!?<EзE??"K
-gradient_tape/sequential_113/dense_340/MatMulMatMulm_"L????!?b????0"K
/gradient_tape/sequential_113/dense_340/MatMul_1MatMul?a?{)?!???|%Z??"=
sequential_113/dense_341/MatMulMatMul?jʆ??!??e#????0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?}?~?K@y?7P,Ũ??"?
both?Your program is POTENTIALLY input-bound because 92.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?55.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 