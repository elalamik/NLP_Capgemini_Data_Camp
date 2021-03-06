?	?R?hZF@?R?hZF@!?R?hZF@	?o?;
w???o?;
w??!?o?;
w??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?R?hZF@O?9???D@1-C?????ACB????I?Ye??~@Yv?;O<g??*	?p=
׳[@2U
Iterator::Model::ParallelMapV2]???E??!5??YP@@)]???E??15??YP@@:Preprocessing2F
Iterator::Model?#?@???!_~?c?{M@)ʦ\?]??1U??:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatT?:???!??B7hY4@)??!U???1??9GMw0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??????!o?h@<P+@)]??a??1???.?^@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?ǁW?}?!0?Q?A@)?ǁW?}?10?Q?A@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip7p??G??!??m?%?D@)/n??r?1 ??7?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?e??q?!??I??@)?e??q?1??I??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?"k????!@?:_?0@) ?t???k?1D@?r@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?o?;
w??I!&??}yX@Q?A????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	O?9???D@O?9???D@!O?9???D@      ??!       "	-C?????-C?????!-C?????*      ??!       2	CB????CB????!CB????:	?Ye??~@?Ye??~@!?Ye??~@B      ??!       J	v?;O<g??v?;O<g??!v?;O<g??R      ??!       Z	v?;O<g??v?;O<g??!v?;O<g??b      ??!       JGPUY?o?;
w??b q!&??}yX@y?A?????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsgИN1-??!gИN1-??"=
sequential_285/dense_855/MatMulMatMul
?}.W??!??R???0"-
IteratorGetNext/_1_Send??I ???!?[^????"=
 sequential_285/dense_857/SoftmaxSoftmax??G?????!|???Dy??"K
-gradient_tape/sequential_285/dense_855/MatMulMatMull?9????!?L<_??0"=
sequential_285/dense_856/MatMulMatMull?9????!l?	ϼX??0"=
sequential_285/dense_857/MatMulMatMul	?@^????!?????l??0"K
/gradient_tape/sequential_285/dense_856/MatMul_1MatMul?2?!m ??!)a??~??"K
/gradient_tape/sequential_285/dense_857/MatMul_1MatMul4???փ??!\i4?????"K
-gradient_tape/sequential_285/dense_856/MatMulMatMul!?LZ??!^??J????0Q      Y@Y??(??(.@a?뺮?:U@q??>???O@y-?gX???"?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?63.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 