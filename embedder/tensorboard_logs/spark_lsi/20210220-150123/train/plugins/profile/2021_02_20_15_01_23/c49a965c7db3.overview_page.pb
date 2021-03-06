?	X7?5B@X7?5B@!X7?5B@	???k1t?????k1t??!???k1t??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6X7?5B@	4???@@1%???????A??@?ȓ??I?Sͬ%??Y+??-??*	K+??V@2U
Iterator::Model::ParallelMapV2??8~??!g?O?n?A@)??8~??1g?O?n?A@:Preprocessing2F
Iterator::ModelS!?????!?X~хM@)46<?R??1?\???7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??)??z??!?@|?3@)tb?c??1?J?)??0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceY??+??x?!?&?я=@)Y??+??x?1?&?я=@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???1????!'V???A)@)??\7??v?1????E@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip ?={.??!???.zD@)??]gEt?1b?9??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap+N?f???!?ikʡ/@)?S?K?g?1|C??a?	@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????g?!o?՛?\	@)?????g?1o?՛?\	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???k1t??Io%?l?XX@Q 6?8,@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
		4???@@	4???@@!	4???@@      ??!       "	%???????%???????!%???????*      ??!       2	??@?ȓ????@?ȓ??!??@?ȓ??:	?Sͬ%???Sͬ%??!?Sͬ%??B      ??!       J	+??-??+??-??!+??-??R      ??!       Z	+??-??+??-??!+??-??b      ??!       JGPUY???k1t??b qo%?l?XX@y 6?8,@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?7O٘???!?7O٘???"<
sequential_87/dense_261/MatMulMatMul?bgꓡ?!e?s?d??0"-
IteratorGetNext/_1_Send???$s??!??'
?R??"<
sequential_87/dense_263/SoftmaxSoftmax`??ƬB??!??M???"<
sequential_87/dense_262/MatMulMatMulF:K????!Lm??????0"J
,gradient_tape/sequential_87/dense_261/MatMulMatMul?6?O???!???k???0"J
,gradient_tape/sequential_87/dense_262/MatMulMatMul??괣???!"U??0"<
sequential_87/dense_263/MatMulMatMul?(??????!?w?p??0"J
.gradient_tape/sequential_87/dense_262/MatMul_1MatMul?K??*??!(O<??"J
.gradient_tape/sequential_87/dense_263/MatMul_1MatMul!aS? ??!-^?K??Q      Y@Y??(??(.@a?뺮?:U@qY]???P@yj??K???"?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?67.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 