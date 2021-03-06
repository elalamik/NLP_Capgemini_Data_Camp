?	?D?
)?B@?D?
)?B@!?D?
)?B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?D?
)?B@Pj???@1tys?V{??AA(??h???Iip[[x?@*??ʡ?k@)       =2Z
#Iterator::Model::ParallelMapV2::ZipQ???Y??!?\?/??R@)˂???:??1????`H@:Preprocessing2U
Iterator::Model::ParallelMapV2?Բ????!?U???-@)?Բ????1?U???-@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat[
H?`??!??W???)@)v?e??S??1$?ˠ?j&@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate~8H????!H????)@)???
?͕?1?-HL#@:Preprocessing2F
Iterator::Model0???????!???Al8@)\?#?????1?Ÿ?&4#@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?!??u?|?!>?	Ύ	@)?!??u?|?1>?	Ύ	@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???[1p?!?l`?8???)???[1p?1?l`?8???:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap~nh?N???!?{K???,@)?#EdX?k?1L{?:???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 84.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?13.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI;????X@QXqJ;???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	Pj???@Pj???@!Pj???@      ??!       "	tys?V{??tys?V{??!tys?V{??*      ??!       2	A(??h???A(??h???!A(??h???:	ip[[x?@ip[[x?@!ip[[x?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q;????X@yXqJ;????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits9t?띝??!9t?띝??"-
IteratorGetNext/_2_Recvܘ?????!p?&?C???"=
sequential_186/dense_558/MatMulMatMulAJ{F?n??!????s???0"K
-gradient_tape/sequential_186/dense_558/MatMulMatMul(??O8??!? ??????0"=
 sequential_186/dense_560/SoftmaxSoftmax???.g???!Z??s??"=
sequential_186/dense_559/MatMulMatMulߺ?Ȧ??!???V>??0"K
/gradient_tape/sequential_186/dense_560/MatMul_1MatMul?xF&???!?????"K
/gradient_tape/sequential_186/dense_559/MatMul_1MatMulĳ0W?s??!$??XQ??"=
sequential_186/dense_560/MatMulMatMulTr9㭔??!7???????0"K
-gradient_tape/sequential_186/dense_559/MatMulMatMulE?o?w??!K,??"??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q??ߴ?=K@y??RZ ???"?
both?Your program is POTENTIALLY input-bound because 84.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?13.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?54.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 