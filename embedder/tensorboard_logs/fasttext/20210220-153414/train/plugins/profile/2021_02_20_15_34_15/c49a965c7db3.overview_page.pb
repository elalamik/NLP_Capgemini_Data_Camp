?	F?=???6@F?=???6@!F?=???6@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-F?=???6@?G 5@1EGr?i??A?ꭁ???I???y7??*	?Zd?]@2U
Iterator::Model::ParallelMapV2?䠄???![/?âB@)?䠄???1[/?âB@:Preprocessing2F
Iterator::ModelV???n/??!(??ٔWL@)?G?Ȱ???1?G??i3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?u7Ou??!??0s+4@)?ի?耔?1??sF?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate
?2?&??!~???{/@)???
a5??1??ZH0P"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?f???! {??|W@)?f???1 {??|W@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipwN?@?C??!?,&k?E@)-^,??w?1ȹ????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?Ov3?o?!d???
@)?Ov3?o?1d???
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapO??C??!??)M<2@)&R???0h?1?۳)??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?RC)?pX@Q???׺?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?G 5@?G 5@!?G 5@      ??!       "	EGr?i??EGr?i??!EGr?i??*      ??!       2	?ꭁ????ꭁ???!?ꭁ???:	???y7?????y7??!???y7??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?RC)?pX@y???׺?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?;y????!?;y????"=
sequential_195/dense_585/MatMulMatMul7n??????!?4ߍ???0"=
 sequential_195/dense_587/SoftmaxSoftmaxz?O?????!j2?M???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?j?wۘ?!I E????"K
/gradient_tape/sequential_195/dense_587/MatMul_1MatMul?qO!???!.@5Ǟ???"K
/gradient_tape/sequential_195/dense_586/MatMul_1MatMul(?@1a&??!?HI????"=
sequential_195/dense_586/MatMulMatMul?9rr??!!?l?+???0"K
-gradient_tape/sequential_195/dense_585/MatMulMatMul3 Q??a??!$??5E???0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam??g^???!o?+????"K
-gradient_tape/sequential_195/dense_586/MatMulMatMulq?t?[??!?F???0Q      Y@Y[ZZZZZ6@ajiiiiiS@q??pY?P@y?T2_?+??"?
both?Your program is POTENTIALLY input-bound because 91.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?66.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 