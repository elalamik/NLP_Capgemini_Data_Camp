?	f??t???@f??t???@!f??t???@	?|λ????|λ???!?|λ???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6f??t???@?%Tpx?=@1??????A????l??II?????Y???????*	S㥛Ĩ\@2U
Iterator::Model::ParallelMapV2v??fG???!?'???:@)v??fG???1?'???:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatI? OZ??!9.??i?;@)S?'?ݚ?1m?????6@:Preprocessing2F
Iterator::Model??2????!9N?/h?G@)dϞ??$??1?t??I?4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???3??!?<:??/@)h?
?O??1?@X #@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??R%ʮ?!Ǳ#З:J@)?C???}?1??Q?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???3.|?!??	?@)???3.|?1??	?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?M?g\w?!,???:?@)?M?g\w?1,???:?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????????!??Ǆ?g2@)?t?? ?k?1W?T??5@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?|λ???I?)??X?X@Q?f
r???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?%Tpx?=@?%Tpx?=@!?%Tpx?=@      ??!       "	????????????!??????*      ??!       2	????l??????l??!????l??:	I?????I?????!I?????B      ??!       J	??????????????!???????R      ??!       Z	??????????????!???????b      ??!       JGPUY?|λ???b q?)??X?X@y?f
r????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??pA????!??pA????"=
sequential_248/dense_744/MatMulMatMul?n?Ҟ???!9Q?? ??0"=
 sequential_248/dense_746/SoftmaxSoftmax???????!???3???"=
sequential_248/dense_745/MatMulMatMul??????!|?e1???0"K
-gradient_tape/sequential_248/dense_745/MatMulMatMul?x$??m??!???????0"=
sequential_248/dense_746/MatMulMatMull???t??!????2??0"K
-gradient_tape/sequential_248/dense_744/MatMulMatMul?Fݾ???! W?➐??0"K
/gradient_tape/sequential_248/dense_746/MatMul_1MatMulC?^!w??!?@\???"K
/gradient_tape/sequential_248/dense_745/MatMul_1MatMul??g(???!????c??"b
?sequential_248/dropout_248/dropout/random_uniform/RandomUniformRandomUniform???Ӳ??!??m@????Q      Y@Y[ZZZZZ6@ajiiiiiS@q?K???L@y?	q5K???"?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?56.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 