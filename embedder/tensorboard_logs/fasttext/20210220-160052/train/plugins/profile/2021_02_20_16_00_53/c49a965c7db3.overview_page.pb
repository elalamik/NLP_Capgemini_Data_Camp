?	?Gߤi?D@?Gߤi?D@!?Gߤi?D@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?Gߤi?D@CV?zN*C@1c?0?????A??????I??g#? @*	??/݄T@2U
Iterator::Model::ParallelMapV2'i??֖?!?=?p,;@)'i??֖?1?=?p,;@:Preprocessing2F
Iterator::ModelFИI???!}?gY.;J@)?yȔA??1?e???I9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??~j?t??!o?f?6&7@)Z?rL???1Y??:3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate3??xy??!	?v??/@),???cZ{?1'O*?E @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice;?*??y?!?-?@gt@);?*??y?1?-?@gt@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipU??E	???!?b????G@)???%ǝr?1<I??s&@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorrQ-"??k?!XL????@)rQ-"??k?1XL????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap(??ȯ??!HK?j??2@)??x@?d?1?6-h?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI|;???X@Q!qx???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	CV?zN*C@CV?zN*C@!CV?zN*C@      ??!       "	c?0?????c?0?????!c?0?????*      ??!       2	????????????!??????:	??g#? @??g#? @!??g#? @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q|;???X@y!qx????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsA??Fk??!A??Fk??"=
sequential_276/dense_828/MatMulMatMul????e???!???r[??0"=
 sequential_276/dense_830/SoftmaxSoftmaxH;??_??!??1h'??"=
sequential_276/dense_829/MatMulMatMul?N
?;???!?@ƭ????0"K
-gradient_tape/sequential_276/dense_829/MatMulMatMul	(?I4???!??768??0"=
sequential_276/dense_830/MatMulMatMulb?z?	???!D????'??0"K
/gradient_tape/sequential_276/dense_830/MatMul_1MatMul7N?,2W??!???GE"??"K
-gradient_tape/sequential_276/dense_828/MatMulMatMul'?2VTx??!OW????0"K
/gradient_tape/sequential_276/dense_829/MatMul_1MatMul???Vō?!#?y?2??"a
Dgradient_tape/sequential_276/batch_normalization_136/moments/truedivRealDiv[?4???!???????Q      Y@Y??(??(.@a?뺮?:U@q?m?!?
T@y!?f???"?
both?Your program is POTENTIALLY input-bound because 93.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?80.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 