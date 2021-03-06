?	?H?H	>@?H?H	>@!?H?H	>@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?H?H	>@|?ԗ?<@1?????a??A>Y1\ ??I`??Ù??*	U㥛?H]@2F
Iterator::Modelg׽?	??!????5N@)??J"? ??1:?S'??@:Preprocessing2U
Iterator::Model::ParallelMapV2*1	???!?\DA<@)*1	???1?\DA<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?Z??8??!ƦJr8\3@) Q0??1BC??/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??M(D??!L??%A+@)rk?m?\??1?qT??G@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?Z'.?+??!ɚ?ɚ?@)?Z'.?+??1ɚ?ɚ?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipl??TO???!w(??C@)	4??yt?1?9?x@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorb??BW"p?!?M???
@)b??BW"p?1?M???
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??;?Bu??!ĩ???80@)????҈i?1?4+f?I@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIg!?҅?X@Q???[???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	|?ԗ?<@|?ԗ?<@!|?ԗ?<@      ??!       "	?????a???????a??!?????a??*      ??!       2	>Y1\ ??>Y1\ ??!>Y1\ ??:	`??Ù??`??Ù??!`??Ù??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qg!?҅?X@y???[????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits'!@?????!'!@?????"=
 sequential_264/dense_794/SoftmaxSoftmax?7To????!T?????"=
sequential_264/dense_792/MatMulMatMul_g?ۘ?!????i??0"K
/gradient_tape/sequential_264/dense_794/MatMul_1MatMuls?6????!?mU????"K
/gradient_tape/sequential_264/dense_793/MatMul_1MatMul?>???!?Z)kF??"K
-gradient_tape/sequential_264/dense_792/MatMulMatMulu.??t???!ԍ??Τ??0"=
sequential_264/dense_793/MatMulMatMulN?k1G???!?G?'c ??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdame׋J????!??1??"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdamfb0}#??!Ez?#0??"K
-gradient_tape/sequential_264/dense_793/MatMulMatMulfb0}#??!kMA??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?>q?;?Q@y?Ђ?????"?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?71.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 