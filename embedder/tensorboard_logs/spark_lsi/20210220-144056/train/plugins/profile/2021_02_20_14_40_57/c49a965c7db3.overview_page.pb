?	?:?p?@@?:?p?@@!?:?p?@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?:?p?@@{L?4?7=@1?Ss?????A???@?M??I?(B?v? @*	?A`?ЂV@2U
Iterator::Model::ParallelMapV2h$B#ظ??!??w?ݨ@@)h$B#ظ??1??w?ݨ@@:Preprocessing2F
Iterator::Model??g????!????E?K@)|G?	1???1zpb?T6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?C5%Y???!??w??-5@)kIG9?M??1B?Um?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatey??"????!v?L?g?-@)J}Yک?|?1?T%V'@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???jdWz?!L ?1y?@)???jdWz?1L ?1y?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?6??:r??!VUP?,F@)?wak??r?1?>?Ɍ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor ?o_?i?!?C?R?@) ?o_?i?1?C?R?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????n???!3	??D2@)?uX?f?1?_?_??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIh??Օ_X@Q?r?OE@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	{L?4?7=@{L?4?7=@!{L?4?7=@      ??!       "	?Ss??????Ss?????!?Ss?????*      ??!       2	???@?M?????@?M??!???@?M??:	?(B?v? @?(B?v? @!?(B?v? @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qh??Օ_X@y?r?OE@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsNb۫????!Nb۫????";
sequential_21/dense_63/MatMulMatMulz?6??!??|?M??0"-
IteratorGetNext/_2_Recv?3????!?FC?`??";
sequential_21/dense_65/SoftmaxSoftmax?S?N????!J1"????"I
+gradient_tape/sequential_21/dense_63/MatMulMatMulv?<??Ք?!y?i1????0";
sequential_21/dense_64/MatMulMatMulzL?w4%??!?2`???0"I
+gradient_tape/sequential_21/dense_64/MatMulMatMul??Ԍ???!?????:??0"I
-gradient_tape/sequential_21/dense_64/MatMul_1MatMul??X????!f?ΥI??"I
-gradient_tape/sequential_21/dense_65/MatMul_1MatMul??8~^??!/a	??O??"`
Ggradient_tape/sequential_21/batch_normalization_9/batchnorm/add_1/Sum_1Sumݕ?M?1??!?Mv?I??Q      Y@Y??(??(.@a?뺮?:U@q?=O>?#S@y؟?'Ƞ??"?
both?Your program is POTENTIALLY input-bound because 90.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?76.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 