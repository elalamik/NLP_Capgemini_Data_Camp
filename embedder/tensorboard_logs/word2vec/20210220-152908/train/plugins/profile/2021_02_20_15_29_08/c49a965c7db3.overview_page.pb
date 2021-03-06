?	?@?M?1C@?@?M?1C@!?@?M?1C@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?@?M?1C@?
???A@1?4?\????Al%t??Y??I??b?d??*	S㥛??S@2U
Iterator::Model::ParallelMapV2h$B#ظ??!??+?B@)h$B#ظ??1??+?B@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatE?D??2??!????>6@)???s?v??1??$Z2@:Preprocessing2F
Iterator::Model?P3?????!:C#???J@)n?HJz??1??tAj?/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?ۼqRx?!??wd?@)?ۼqRx?1??wd?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate稣?jd??!?h=?k?,@)͓k
dvv?1z??ru@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???Dh??!Ƽ?CI?G@)?9??q?u?1??r&?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???*øk?!?????@)???*øk?1?????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??
?H???!?Y _E?1@)@Û5x_e?1*?| 
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?? ˤX@Q,M?w;???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?
???A@?
???A@!?
???A@      ??!       "	?4?\?????4?\????!?4?\????*      ??!       2	l%t??Y??l%t??Y??!l%t??Y??:	??b?d????b?d??!??b?d??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?? ˤX@y,M?w;????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?6?{}%??!?6?{}%??"=
sequential_177/dense_531/MatMulMatMulp>ӻ???!??5???0"=
 sequential_177/dense_533/SoftmaxSoftmax?/%&&???!=V??????"=
sequential_177/dense_532/MatMulMatMulA?K?(Ϝ?!?V&u???0"K
-gradient_tape/sequential_177/dense_532/MatMulMatMulA`l?t??!u]?b??0"=
sequential_177/dense_533/MatMulMatMulF?A????!??-?e???0"K
-gradient_tape/sequential_177/dense_531/MatMulMatMulO6???֗?!>????n??0"K
/gradient_tape/sequential_177/dense_532/MatMul_1MatMul?r&+3)??!k'?2a???"K
/gradient_tape/sequential_177/dense_533/MatMul_1MatMul?S??????!?<??i)??"K
-gradient_tape/sequential_177/dense_533/MatMulMatMul????7??! ??H[??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q???f?R@yj??????"?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?75.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 