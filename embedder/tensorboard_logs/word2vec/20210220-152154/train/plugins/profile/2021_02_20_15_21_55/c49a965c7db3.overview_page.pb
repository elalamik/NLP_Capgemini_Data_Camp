?	?E?n?7C@?E?n?7C@!?E?n?7C@	03?????03?????!03?????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?E?n?7C@4??@??A@1??1????A?dT??Ierjg????Y?zi? '??*	NbX9d^@2U
Iterator::Model::ParallelMapV2B??v?$??!??E??F@)B??v?$??1??E??F@:Preprocessing2F
Iterator::Model*X?l:??!O?J7?P@)#?Ƥ???1Q3R?3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??`?>??!???0@)H4?"??1J?0?s+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?(^emS??!l#:,5?&@){?"0?7??1?S?&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???:q9??!c?j?o?A@)-@?j?y?1?!nU|?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice_?vj.7x?!(??1?s@)_?vj.7x?1(??1?s@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?z????!?L5??,@)b?[>??n?1???K;?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?+e?Xg?!?wϬW?@)?+e?Xg?1?wϬW?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no903?????I??&??)X@QX]t? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	4??@??A@4??@??A@!4??@??A@      ??!       "	??1??????1????!??1????*      ??!       2	?dT???dT??!?dT??:	erjg????erjg????!erjg????B      ??!       J	?zi? '???zi? '??!?zi? '??R      ??!       Z	?zi? '???zi? '??!?zi? '??b      ??!       JGPUY03?????b q??&??)X@yX]t? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?V??????!?V??????"=
sequential_158/dense_474/MatMulMatMul?H??R[??!??????0"=
 sequential_158/dense_476/SoftmaxSoftmax\^?
???!???H???"=
sequential_158/dense_475/MatMulMatMul?S<.???!??|?N>??0"-
IteratorGetNext/_1_Send?*zc????!P???????"K
-gradient_tape/sequential_158/dense_474/MatMulMatMul???????!??m|o??0"=
sequential_158/dense_476/MatMulMatMul??:???!O?o?z??0"K
-gradient_tape/sequential_158/dense_475/MatMulMatMul??|??~??!??????0"K
/gradient_tape/sequential_158/dense_475/MatMul_1MatMulS3?sD%??!?? 2{??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??"(???!??a?o??Q      Y@Y??(??(.@a?뺮?:U@q*??	0?C@y?oF?????"?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?39.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 