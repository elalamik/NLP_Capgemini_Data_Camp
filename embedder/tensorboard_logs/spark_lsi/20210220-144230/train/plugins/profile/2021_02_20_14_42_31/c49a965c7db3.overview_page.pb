?	???B?j=@???B?j=@!???B?j=@	?Q?S?f???Q?S?f??!?Q?S?f??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6???B?j=@??a??:@1Do??????A=dʇ?j??I?MF?a???YMu?Զ?*	Zd;??T@2U
Iterator::Model::ParallelMapV2l???f??!m?qEw1A@)l???f??1m?qEw1A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatw??N#-??!??&^?8@)??ם?<??1??8?4)4@:Preprocessing2F
Iterator::ModelB?S?[??!;???I@)2ZGUD??1?a;1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice:[@h=|y?!?????@):[@h=|y?1?????@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?/???t??!2????,@)?t_?lw?1?y??e@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zips?<G令?!??]3??H@)l=C8f?s?1?/?y7@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorۥ???o?!?з?l@)ۥ???o?1?з?l@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap*t^c????!??!???1@)w?E?h?1Ju(?c@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?Q?S?f??It????SX@Q<'??A"@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??a??:@??a??:@!??a??:@      ??!       "	Do??????Do??????!Do??????*      ??!       2	=dʇ?j??=dʇ?j??!=dʇ?j??:	?MF?a????MF?a???!?MF?a???B      ??!       J	Mu?Զ?Mu?Զ?!Mu?Զ?R      ??!       Z	Mu?Զ?Mu?Զ?!Mu?Զ?b      ??!       JGPUY?Q?S?f??b qt????SX@y<'??A"@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsp???????!p???????";
sequential_28/dense_86/SoftmaxSoftmaxv?f?-ޖ?!v?li???";
sequential_28/dense_84/MatMulMatMul??wT֑?!?lQW9???0"I
+gradient_tape/sequential_28/dense_84/MatMulMatMulR??Rl???!J??????0"I
-gradient_tape/sequential_28/dense_85/MatMul_1MatMul?
>a4???!e?mM???"I
-gradient_tape/sequential_28/dense_86/MatMul_1MatMul9s eP???!?(t????";
sequential_28/dense_85/MatMulMatMul?2??͍?!9???@???0"I
+gradient_tape/sequential_28/dense_86/MatMulMatMulx?l
h???!M?Ě??0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam???z?؇?!Ԋ蚈Y??";
sequential_28/dense_86/MatMulMatMul[?u??ׇ?!?8? G??0Q      Y@Y??(??(.@a?뺮?:U@q?\a|?zQ@y4?0???"?
both?Your program is POTENTIALLY input-bound because 90.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?69.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 