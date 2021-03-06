?	?wE???>@?wE???>@!?wE???>@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?wE???>@???k??<@1؛??	??A??I???Ip?71$g??*	R????R@2U
Iterator::Model::ParallelMapV2,=)???!?R_?l!A@),=)???1?R_?l!A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatE?D??2??!?~W?7@)f???8???1??? 4@:Preprocessing2F
Iterator::ModelGXT??$??!?[??m I@)?@׾?^??1?#TE?/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate3?z????!???p?0@)????z?1?xb$"!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?J[\?3y?!Y???	? @)?J[\?3y?1Y???	? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipq ?????!i?Ks??H@)????Wr?1]#??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??|??g?!?ˑE??@)??|??g?1?ˑE??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?? ?=??!?gI??3@)W??mUb?1?w&@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI	?&??X@Q?}Zv8Z??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???k??<@???k??<@!???k??<@      ??!       "	؛??	??؛??	??!؛??	??*      ??!       2	??I?????I???!??I???:	p?71$g??p?71$g??!p?71$g??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q	?&??X@y?}Zv8Z???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??q???!??q???"-
IteratorGetNext/_2_Recv??%ok??!ތK?????"<
sequential_90/dense_270/MatMulMatMulF??1sէ?!?W?Y????0"<
sequential_90/dense_272/SoftmaxSoftmax???gk۟?!?\????"J
,gradient_tape/sequential_90/dense_270/MatMulMatMulLy?{X??!?$?2???0"<
sequential_90/dense_271/MatMulMatMulF???%??!?Ɯ>????0"J
.gradient_tape/sequential_90/dense_271/MatMul_1MatMul?Y?,5??!8?h?u??"J
.gradient_tape/sequential_90/dense_272/MatMul_1MatMul<9̆&???!̏??????"J
,gradient_tape/sequential_90/dense_271/MatMulMatMul? U??=??!??z?? ??0"<
sequential_90/dense_272/MatMulMatMul^K?U??!?&????0Q      Y@Y[ZZZZZ6@ajiiiiiS@q??(YQ@y=???n??"?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?69.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 