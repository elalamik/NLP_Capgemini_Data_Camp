?	 ?M??sC@ ?M??sC@! ?M??sC@	?_????
@?_????
@!?_????
@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6 ?M??sC@L???<?A@1?'?_??A?????ݥ?I.?Ue???Yjj?Z???*	?n???Z@2U
Iterator::Model::ParallelMapV2:y?	?5??!V)?ӏ@@):y?	?5??1V)?ӏ@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?r/0+??!	q?@?>@)t&m??1
??)?:@:Preprocessing2F
Iterator::Model???@?w??!H???W?G@)P??n???1?S???-@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??9?|?!????@)??9?|?1????@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?E?~???!nn?tA)@)?t??{?1?߳?q?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?w??#???!?Ah5?J@)nYk(?w?1>???kz@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???מYr?!?;o[ܟ@)???מYr?1?;o[ܟ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??ʦ\??!0Ɨ?\u/@)?iT?dk?1_?cd?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?_????
@Ik??d?W@Q?2??? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	L???<?A@L???<?A@!L???<?A@      ??!       "	?'?_???'?_??!?'?_??*      ??!       2	?????ݥ??????ݥ?!?????ݥ?:	.?Ue???.?Ue???!.?Ue???B      ??!       J	jj?Z???jj?Z???!jj?Z???R      ??!       Z	jj?Z???jj?Z???!jj?Z???b      ??!       JGPUY?_????
@b qk??d?W@y?2??? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????????!????????"-
IteratorGetNext/_1_Send???W[??!i??????"<
sequential_95/dense_285/MatMulMatMul?ZM??!1W???P??0"J
,gradient_tape/sequential_95/dense_285/MatMulMatMulFdT?3??!???{???0"<
sequential_95/dense_287/SoftmaxSoftmaxG?t?hՔ?!q?"?G??"<
sequential_95/dense_286/MatMulMatMul?jAG͓?!??h???0"J
,gradient_tape/sequential_95/dense_286/MatMulMatMul????,Ǒ?!??O۠??0"<
sequential_95/dense_287/MatMulMatMul˘+??X??!?'DN????0"J
.gradient_tape/sequential_95/dense_287/MatMul_1MatMul?Q?1I???!"Η<???"J
.gradient_tape/sequential_95/dense_286/MatMul_1MatMul?vH?z??!?e8????Q      Y@Y??(??(.@a?뺮?:U@q??X??3@y?p????"?
both?Your program is POTENTIALLY input-bound because 90.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?19.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 