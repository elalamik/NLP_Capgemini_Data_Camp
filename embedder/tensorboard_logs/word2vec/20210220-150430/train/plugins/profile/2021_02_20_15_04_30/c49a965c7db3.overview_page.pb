?	ka?9?8@ka?9?8@!ka?9?8@	???3?p?????3?p??!???3?p??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6ka?9?8@?U?6??6@1Gˁj[??Af?ikD0??Ii?A'?N??Y(??vL??*	6^?I:a@2U
Iterator::Model::ParallelMapV2?b??*3??!??Х??D@)?b??*3??1??Х??D@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipW#??2R??!*?v??1F@)?I??{??1.?Nk-@:Preprocessing2F
Iterator::Model???խ???!?)?X;?K@)=Զa??1ul??
u,@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?i?????!AI??'?0@)д??h???1?1,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?Z
H???!x?@?&@)?h??????15U?}h@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???$??|?!?O~L@)???$??|?1?O~L@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor"???ɩm?!?S?@)"???ɩm?1?S?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?????!???WM*@)W'g(?xc?1???λ???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???3?p??I??k?AX@Q???o @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?U?6??6@?U?6??6@!?U?6??6@      ??!       "	Gˁj[??Gˁj[??!Gˁj[??*      ??!       2	f?ikD0??f?ikD0??!f?ikD0??:	i?A'?N??i?A'?N??!i?A'?N??B      ??!       J	(??vL??(??vL??!(??vL??R      ??!       Z	(??vL??(??vL??!(??vL??b      ??!       JGPUY???3?p??b q??k?AX@y???o @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsf??L????!f??L????"<
sequential_99/dense_297/MatMulMatMul!?̉????!Wx?W????0"<
sequential_99/dense_299/SoftmaxSoftmax?%XO?w??!}???(??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamą?B
Ϙ?!r?Å????"J
,gradient_tape/sequential_99/dense_297/MatMulMatMulzNt?Z$??!Z*?4(??0"J
.gradient_tape/sequential_99/dense_299/MatMul_1MatMulAswL'??!????rz??"J
.gradient_tape/sequential_99/dense_298/MatMul_1MatMullL?tg???!U?P????"<
sequential_99/dense_298/MatMulMatMulO??s1??!Gk????0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam?O??>??!CЃJ???"`
=sequential_99/dropout_99/dropout/random_uniform/RandomUniformRandomUniformfdtB???!??q]&??Q      Y@Y[ZZZZZ6@ajiiiiiS@qC?!???H@yh?X?Nm??"?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?49.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 