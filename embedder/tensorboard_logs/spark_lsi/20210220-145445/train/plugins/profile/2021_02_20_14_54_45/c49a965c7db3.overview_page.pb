?	????>@????>@!????>@	F??x?N??F??x?N??!F??x?N??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6????>@??f??]<@1?U?&?5??A???F???I8?W????Y.?&??*	}?5^?i_@2F
Iterator::ModelXo?
????!)??!?{M@):x&4I,??1?ey?C@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??_?????!??f??:@)?|$%=??1?꛴v?5@:Preprocessing2U
Iterator::Model::ParallelMapV2??ù???!??Ey??3@)??ù???1??Ey??3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice	???w?!?@Aul@)	???w?1?@Aul@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateg?CV??!?(eW,#"@)??	j?v?1??9<?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor
pu?!&?+??X@)
pu?1&?+??X@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??g?e??!?I?$?D@)0?a?[>r?1$tT?[@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????y??!9?9?_?&@)?:?*?h?1jQR??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9E??x?N??I?OS̬\X@Q@?ɮU-??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??f??]<@??f??]<@!??f??]<@      ??!       "	?U?&?5???U?&?5??!?U?&?5??*      ??!       2	???F??????F???!???F???:	8?W????8?W????!8?W????B      ??!       J	.?&??.?&??!.?&??R      ??!       Z	.?&??.?&??!.?&??b      ??!       JGPUYE??x?N??b q?OS̬\X@y@?ɮU-???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????-???!????-???"<
sequential_73/dense_221/SoftmaxSoftmax Jk	?O??!G ?J??"<
sequential_73/dense_219/MatMulMatMul)?xU??!He?????0"J
,gradient_tape/sequential_73/dense_219/MatMulMatMulfL]???!Z??u}???0"J
.gradient_tape/sequential_73/dense_221/MatMul_1MatMul0m?????!-??e?)??"J
.gradient_tape/sequential_73/dense_220/MatMul_1MatMul`͍ǯg??!?4b5???"<
sequential_73/dense_220/MatMulMatMuly?J,????!ۈ?dO???0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam?g?5dۑ?!ZR????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?9,=Α??!??$?"???"J
,gradient_tape/sequential_73/dense_220/MatMulMatMul??;?L???!ڢ([7???0Q      Y@Y[ZZZZZ6@ajiiiiiS@qLB7x?E@y׼]7???"?
both?Your program is POTENTIALLY input-bound because 91.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?43.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 